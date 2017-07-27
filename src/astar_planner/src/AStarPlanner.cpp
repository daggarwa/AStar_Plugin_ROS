#include "AStarPlanner.h"
#include <pluginlib/class_loader.h>
#include <pluginlib/class_list_macros.h>

//register this planner as a BaseGlobalPlanner plugin
PLUGINLIB_EXPORT_CLASS(astar_plugin::AStarPlanner, nav_core::BaseGlobalPlanner)

int value;
int mapSize;
bool *occupancyGridMap;

//cost of non connected nodes
float infinity = std::numeric_limits<float>::infinity();

// coefficient for breaking ties
float tBreak;

namespace astar_plugin
{

//Default Constructor
AStarPlanner::AStarPlanner()
{
}

/**
  Constructor with shared node handle
**/
AStarPlanner::AStarPlanner(ros::NodeHandle &nh)
{
  ROSNodeHandle = nh;
}

/**
  Constructor that initilizes costmap and other parameters
**/
AStarPlanner::AStarPlanner(std::string name, costmap_2d::Costmap2DROS *costmap_ros)
{
  initialize(name, costmap_ros);
}

/**
Implementation of method from BaseGlobalPlanner interface that
initializes the cost map and other parameters of the grid.

**/

void AStarPlanner::initialize(std::string name, costmap_2d::Costmap2DROS *costmap_ros)
{

  if (!initialized_)
  {
    costmap_ros_ = costmap_ros;
    costmap_ = costmap_ros_->getCostmap();

    ros::NodeHandle private_nh("~/" + name);

    originX = costmap_->getOriginX();
    originY = costmap_->getOriginY();

    width = costmap_->getSizeInCellsX();
    height = costmap_->getSizeInCellsY();
    resolution = costmap_->getResolution();
    mapSize = width * height;
    tBreak = 1 + 1 / (mapSize);
    value = 0;

    occupancyGridMap = new bool[mapSize];
    for (unsigned int iy = 0; iy < costmap_->getSizeInCellsY(); iy++)
    {
      for (unsigned int ix = 0; ix < costmap_->getSizeInCellsX(); ix++)
      {
        unsigned int cost = static_cast<int>(costmap_->getCost(ix, iy));

        if (cost == 0)
          occupancyGridMap[iy * width + ix] = true;
        else
          occupancyGridMap[iy * width + ix] = false;
      }
    }

    ROS_INFO("AStar planner initialized.");
    initialized_ = true;
  }
  else
    ROS_WARN("This planner has already been initialized... doing nothing");
}

/**
  Implementation of method from BaseGlobalPlanner interface that calculates
  plan to reach the goal
**/
bool AStarPlanner::makePlan(const geometry_msgs::PoseStamped &start, const geometry_msgs::PoseStamped &goal,
                            std::vector<geometry_msgs::PoseStamped> &plan)
{

  if (!initialized_)
  {
    ROS_ERROR("The planner has not been initialized, please call initialize() to use the planner");
    return false;
  }

  ROS_DEBUG("Got a start: %.2f, %.2f, and a goal: %.2f, %.2f", start.pose.position.x, start.pose.position.y,
            goal.pose.position.x, goal.pose.position.y);

  plan.clear();

  if (goal.header.frame_id != costmap_ros_->getGlobalFrameID())
  {
    ROS_ERROR("This planner as configured will only accept goals in the %s frame, but a goal was sent in the %s frame.",
              costmap_ros_->getGlobalFrameID().c_str(), goal.header.frame_id.c_str());
    return false;
  }

  // convert the start and goal positions

  float startX = start.pose.position.x;
  float startY = start.pose.position.y;

  float goalX = goal.pose.position.x;
  float goalY = goal.pose.position.y;

  //Convert to map coordinates relative to costmap origin
  convertToMapCoordinates(startX, startY);
  convertToMapCoordinates(goalX, goalY);

  int startGridSquare;
  int goalGridSquare;

  if (isCoordinateInBounds(startX, startY) && isCoordinateInBounds(goalX, goalY))
  {
    startGridSquare = getGridSquareIndex(startX, startY);

    goalGridSquare = getGridSquareIndex(goalX, goalY);
  }
  else
  {
    ROS_WARN("the start or goal is out of the map");
    return false;
  }

  // call global planner

  if (isStartAndGoalValid(startGridSquare, goalGridSquare))
  {

    vector<int> bestPath;
    bestPath.clear();

    bestPath = runAStarOnGrid(startGridSquare, goalGridSquare);

    //if the global planner finds a path
    if (bestPath.size() > 0)
    {

      // convert the path

      for (int i = 0; i < bestPath.size(); i++)
      {

        float x = 0.0;
        float y = 0.0;

        float previous_x = 0.0;
        float previous_y = 0.0;

        int index = bestPath[i];
        int previous_index;
        getGridSquareIndices(index, x, y);

        if (i != 0)
        {
          previous_index = bestPath[i - 1];
        }
        else
        {
          previous_index = index;
        }

        getGridSquareIndices(previous_index, previous_x, previous_y);

        //Orient the bot towards target
        tf::Vector3 vectorToTarget;
        vectorToTarget.setValue(x - previous_x, y - previous_y, 0.0);
        float angle = atan2((double)vectorToTarget.y(), (double)vectorToTarget.x());

        geometry_msgs::PoseStamped pose = goal;

        pose.pose.position.x = x;
        pose.pose.position.y = y;
        pose.pose.position.z = 0.0;

        pose.pose.orientation = tf::createQuaternionMsgFromYaw(angle);

        plan.push_back(pose);
      }

      return true;
    }

    else
    {
      ROS_WARN("The planner failed to find a path, choose other goal position");
      return false;
    }
  }

  else
  {
    ROS_WARN("Not valid start or goal");
    return false;
  }
}

/**
  Function to adjust start and goal w.r.t origin point on map
**/
void AStarPlanner::convertToMapCoordinates(float &x, float &y)
{

  x = x - originX;
  y = y - originY;
}

/**
  Function to get index of grid square on map given square coordinates
**/
int AStarPlanner::getGridSquareIndex(float x, float y)
{

  int gridSquare;

  float newX = x / (resolution);
  float newY = y / (resolution);

  gridSquare = calculateGridSquareIndex(newY, newX);

  return gridSquare;
}

/**
  Function to get gridSquare coordinates given index
  
**/
void AStarPlanner::getGridSquareIndices(int index, float &x, float &y)
{

  x = getGridSquareColID(index) * resolution;

  y = getGridSquareRowID(index) * resolution;

  x = x + originX;
  y = y + originY;
}

/**
  Function to check if gridSquare coordinates are in map bounds
  
**/
bool AStarPlanner::isCoordinateInBounds(float x, float y)
{
  bool valid = true;

  if (x > (width * resolution) || y > (height * resolution))
    valid = false;

  return valid;
}

/**
  Function runs the A* algorithm to find best path to goal on grid

**/
vector<int> AStarPlanner::runAStarOnGrid(int startGridSquare, int goalGridSquare)
{

  vector<int> bestPath;

  float g_score[mapSize];

  for (uint i = 0; i < mapSize; i++)
    g_score[i] = infinity;

  bestPath = findPath(startGridSquare, goalGridSquare, g_score);

  return bestPath;
}

/**

  Generates the path for the bot towards the goal

**/
vector<int> AStarPlanner::findPath(int startGridSquare, int goalGridSquare, float g_score[])
{
  value++;
  vector<int> bestPath;
  vector<int> emptyPath;
  GridSquare gridSq;

  multiset<GridSquare> openSquaresList;
  int currentGridSquare;

  //calculate g_score and f_score of the start position
  g_score[startGridSquare] = 0;
  gridSq.currentGridSquare = startGridSquare;
  gridSq.fCost = g_score[startGridSquare] + calculateFScore(startGridSquare, goalGridSquare);

  //add the start gridSquare to the open list
  openSquaresList.insert(gridSq);
  currentGridSquare = startGridSquare;

  //while the open list is not empty and till goal square is reached continue the search
  while (!openSquaresList.empty() && g_score[goalGridSquare] == infinity)
  {
    //choose the gridSquare that has the lowest cost fCost in the open set
    currentGridSquare = openSquaresList.begin()->currentGridSquare;
    //remove that gridSquare from the openList
    openSquaresList.erase(openSquaresList.begin());
    //search the neighbors of that gridSquare
    vector<int> neighborGridSquares;
    neighborGridSquares = findFreeNeighborGridSquare(currentGridSquare);
    for (uint i = 0; i < neighborGridSquares.size(); i++) //for each neighbor v of gridSquare
    {
      // if the g_score of the neighbor is equal to INF: unvisited gridSquare
      if (g_score[neighborGridSquares[i]] == infinity)
      {
        g_score[neighborGridSquares[i]] = g_score[currentGridSquare] + getMoveCost(currentGridSquare, neighborGridSquares[i]);
        addNeighborGridSquareToOpenList(openSquaresList, neighborGridSquares[i], goalGridSquare, g_score);
      }
    }
  }

  if (g_score[goalGridSquare] != infinity) // if goal gridSquare has been reached
  {
    bestPath = constructPath(startGridSquare, goalGridSquare, g_score);
    return bestPath;
  }
  else
  {
    ROS_INFO("Failure to find a path !");
    return emptyPath;
  }
}

/**
  Function constructs the path found by findPath function by returning vector of
  gridSquare indices that lie on path.

**/
vector<int> AStarPlanner::constructPath(int startGridSquare, int goalGridSquare, float g_score[])
{
  vector<int> bestPath;
  vector<int> path;

  path.insert(path.begin() + bestPath.size(), goalGridSquare);
  int currentGridSquare = goalGridSquare;

  while (currentGridSquare != startGridSquare)
  {
    vector<int> neighborGridSquares;
    neighborGridSquares = findFreeNeighborGridSquare(currentGridSquare);

    vector<float> gScoresNeighbors;
    for (uint i = 0; i < neighborGridSquares.size(); i++)
      gScoresNeighbors.push_back(g_score[neighborGridSquares[i]]);

    int posMinGScore = distance(gScoresNeighbors.begin(), min_element(gScoresNeighbors.begin(), gScoresNeighbors.end()));
    currentGridSquare = neighborGridSquares[posMinGScore];

    //insert the neighbor in the path
    path.insert(path.begin() + path.size(), currentGridSquare);
  }
  for (uint i = 0; i < path.size(); i++)
    bestPath.insert(bestPath.begin() + bestPath.size(), path[path.size() - (i + 1)]);

  return bestPath;
}

/**
  Helper function to add unexplored neighbours of currentGridSquare to openlist
**/
void AStarPlanner::addNeighborGridSquareToOpenList(multiset<GridSquare> &openSquaresList, int neighborGridSquare, int goalGridSquare, float g_score[])
{
  GridSquare gridSq;
  gridSq.currentGridSquare = neighborGridSquare; //insert the neighborGridSquare
  gridSq.fCost = g_score[neighborGridSquare] + calculateFScore(neighborGridSquare, goalGridSquare);
  openSquaresList.insert(gridSq);
}

/**
  Helper function to find free neighbours of currentGridSquare 
**/

vector<int> AStarPlanner::findFreeNeighborGridSquare(int gridSquare)
{

  int rowID = getGridSquareRowID(gridSquare);
  int colID = getGridSquareColID(gridSquare);
  int neighborIndex;
  vector<int> freeNeighborGridSquares;

  for (int i = -1; i <= 1; i++)
    for (int j = -1; j <= 1; j++)
    {
      //check whether the index is valid
      if ((rowID + i >= 0) && (rowID + i < height) && (colID + j >= 0) && (colID + j < width) && (!(i == 0 && j == 0)))
      {
        neighborIndex = ((rowID + i) * width) + (colID + j);

        if (isFree(neighborIndex))
          freeNeighborGridSquares.push_back(neighborIndex);
      }
    }
  return freeNeighborGridSquares;
}

/**
  Checks if start and goal positions are valid and not unreachable.
**/
bool AStarPlanner::isStartAndGoalValid(int startGridSquare, int goalGridSquare)
{
  bool isvalid = true;
  bool isFreeStartGridSquare = isFree(startGridSquare);
  bool isFreeGoalGridSquare = isFree(goalGridSquare);
  if (startGridSquare == goalGridSquare)
  {

    isvalid = false;
  }
  else
  {
    if (!isFreeStartGridSquare && !isFreeGoalGridSquare)
    {

      isvalid = false;
    }
    else
    {
      if (!isFreeStartGridSquare)
      {

        isvalid = false;
      }
      else
      {
        if (!isFreeGoalGridSquare)
        {

          isvalid = false;
        }
        else
        {
          if (findFreeNeighborGridSquare(goalGridSquare).size() == 0)
          {

            isvalid = false;
          }
          else
          {
            if (findFreeNeighborGridSquare(startGridSquare).size() == 0)
            {

              isvalid = false;
            }
          }
        }
      }
    }
  }
  return isvalid;
}

/**
  Helper function to calculate cost of moving from currentGridSquare to neighbour

**/
float AStarPlanner::getMoveCost(int i1, int j1, int i2, int j2)
{
  float moveCost = infinity; //start cost with maximum value. Change it to real cost of gridSquares are connected
  //if gridSquare(i2,j2) exists in the diagonal of gridSquare(i1,j1)
  if ((j2 == j1 + 1 && i2 == i1 + 1) || (i2 == i1 - 1 && j2 == j1 + 1) || (i2 == i1 - 1 && j2 == j1 - 1) || (j2 == j1 - 1 && i2 == i1 + 1))
  {

    moveCost = 1.4;
  }
  //if gridSquare(i2,j2) exists in the horizontal or vertical line with gridSquare(i1,j1)
  else
  {
    if ((j2 == j1 && i2 == i1 - 1) || (i2 == i1 && j2 == j1 - 1) || (i2 == i1 + 1 && j2 == j1) || (i1 == i2 && j2 == j1 + 1))
    {

      moveCost = 1;
    }
  }
  return moveCost;
}

/**
  Wrapper function to calculate cost of moving from currentGridSquare to neighbour

**/
float AStarPlanner::getMoveCost(int gridSquareID1, int gridSquareID2)
{
  int i1 = 0, i2 = 0, j1 = 0, j2 = 0;

  i1 = getGridSquareRowID(gridSquareID1);
  j1 = getGridSquareColID(gridSquareID1);
  i2 = getGridSquareRowID(gridSquareID2);
  j2 = getGridSquareColID(gridSquareID2);

  return getMoveCost(i1, j1, i2, j2);
}

/**

**/
float AStarPlanner::calculateFScore(int gridSquareID, int goalGridSquare)
{
  int x1 = getGridSquareRowID(goalGridSquare);
  int y1 = getGridSquareColID(goalGridSquare);
  int x2 = getGridSquareRowID(gridSquareID);
  int y2 = getGridSquareColID(gridSquareID);
  return abs(x1 - x2) + abs(y1 - y2);
}

/**
  Calculates the gridSquare index from square coordinates
**/
int AStarPlanner::calculateGridSquareIndex(int i, int j) 
{
  return (i * width) + j;
}

/**

  Calculates gridSquare row from square index

**/
int AStarPlanner::getGridSquareRowID(int index) //get the row ID from gridSquare index
{
  return index / width;
}

/**

  Calculates gridSquare column from square index

**/
int AStarPlanner::getGridSquareColID(int index) //get column ID from gridSquare index
{
  return index % width;
}

/**

  Checks if gridSquare at (i,j) is free

**/
bool AStarPlanner::isFree(int i, int j)
{
  int gridSquareID = (i * width) + j;

  return occupancyGridMap[gridSquareID];
}

/**

  Checks if gridSquare at index gridSquareID is free

**/
bool AStarPlanner::isFree(int gridSquareID)
{
  return occupancyGridMap[gridSquareID];
}
};

/**
  Overloaded operator for comparing cost among two gridSquares.

**/
bool operator<(GridSquare const &c1, GridSquare const &c2) { return c1.fCost < c2.fCost; }