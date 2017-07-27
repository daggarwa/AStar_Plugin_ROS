#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>
#include <fstream>
#include <iostream>
#include <iomanip>
#include <string>

#include "AStarPlanner.h"
#include <pluginlib/class_loader.h>
#include <pluginlib/class_list_macros.h>

//register this planner as a BaseGlobalPlanner plugin
PLUGINLIB_EXPORT_CLASS(astar_plugin::AStarPlanner, nav_core::BaseGlobalPlanner)

int value;
int mapSize;
bool *OGM;
static const float INFINIT_COST = INT_MAX; //!< cost of non connected nodes
float infinity = std::numeric_limits<float>::infinity();
float tBreak; // coefficient for breaking ties
//ofstream MyExcelFile("RA_result.xlsx", ios::trunc);

int clock_gettime(clockid_t clk_id, struct timespect *tp);

timespec diff(timespec start_time, timespec end_time)
{
  timespec temp;
  if ((end_time.tv_nsec - start_time.tv_nsec) < 0)
  {
    temp.tv_sec = end_time.tv_sec - start_time.tv_sec - 1;
    temp.tv_nsec = 1000000000 + end_time.tv_nsec - start_time.tv_nsec;
  }
  else
  {
    temp.tv_sec = end_time.tv_sec - start_time.tv_sec;
    temp.tv_nsec = end_time.tv_nsec - start_time.tv_nsec;
  }
  return temp;
}

//inline vector<int> findFreeNeighborGridSquare(int CellID);

namespace astar_plugin
{

//Default Constructor
AStarPlanner::AStarPlanner()
{
}
AStarPlanner::AStarPlanner(ros::NodeHandle &nh)
{
  ROSNodeHandle = nh;
}

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

    OGM = new bool[mapSize];
    for (unsigned int iy = 0; iy < costmap_->getSizeInCellsY(); iy++)
    {
      for (unsigned int ix = 0; ix < costmap_->getSizeInCellsX(); ix++)
      {
        unsigned int cost = static_cast<int>(costmap_->getCost(ix, iy));
        
        if (cost == 0)
          OGM[iy * width + ix] = true;
        else
          OGM[iy * width + ix] = false;
      }
    }

    //MyExcelFile << "StartID\tStartX\tStartY\tGoalID\tGoalX\tGoalY\tPlannertime(ms)\tpathLength\tnumberOfCells\t" << endl;

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

  //tf::Stamped<tf::Pose> goal_tf;
  //tf::Stamped<tf::Pose> start_tf;

  //poseStampedMsgToTF(goal, goal_tf);
  //poseStampedMsgToTF(start, start_tf);

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

    //MyExcelFile << startGridSquare << "\t" << start.pose.position.x << "\t" << start.pose.position.y << "\t" << goalGridSquare << "\t" << goal.pose.position.x << "\t" << goal.pose.position.y;
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

        float previous_x=0.0;
        float previous_y=0.0;
               

        int index = bestPath[i];
        int previous_index;
        getGridSquareIndices(index, x, y);

        if(i!=0)
        {
          previous_index=bestPath[i-1];

          
        }
        else
        {
          previous_index=index;

        }

        getGridSquareIndices(previous_index,previous_x,previous_y);
        tf::Vector3 vectorToTarget;
        vectorToTarget.setValue(x-previous_x, y-previous_y, 0.0);

              
        float angle = atan2((double)vectorToTarget.y(),(double) vectorToTarget.x()) ;
        ROS_INFO("angle: %f",angle);

        geometry_msgs::PoseStamped pose = goal;

        pose.pose.position.x = x;
        pose.pose.position.y = y;
        pose.pose.position.z = 0.0;

        pose.pose.orientation= tf::createQuaternionMsgFromYaw(angle);
       // pose.pose.orientation.x = 0.0;
       // pose.pose.orientation.y = 0.0;
       // pose.pose.orientation.z = 0.0;
       // pose.pose.orientation.w = 1.0;

        plan.push_back(pose);
      }

      float path_length = 0.0;

      std::vector<geometry_msgs::PoseStamped>::iterator it = plan.begin();

      geometry_msgs::PoseStamped last_pose;
      last_pose = *it;
      it++;
      for (; it != plan.end(); ++it)
      {
        path_length += hypot((*it).pose.position.x - last_pose.pose.position.x,
                             (*it).pose.position.y - last_pose.pose.position.y);
        last_pose = *it;
      }
      cout << "The global path length: " << path_length << " meters" << endl;
      //MyExcelFile << "\t" << path_length << "\t" << plan.size() << endl;
      //publish the plan

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
void AStarPlanner::convertToMapCoordinates(float &x, float &y)
{

  x = x - originX;
  y = y - originY;
}

int AStarPlanner::getGridSquareIndex(float x, float y)
{

  int gridSquare;

  float newX = x / (resolution);
  float newY = y / (resolution);

  
  gridSquare = calculateGridSquareIndex(newY, newX);

  return gridSquare;
}

void AStarPlanner::getGridSquareIndices(int index, float &x, float &y)
{

  x = getGridSquareColID(index) * resolution;

  y = getGridSquareRowID(index) * resolution;

  x = x + originX;
  y = y + originY;
}

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

  timespec time1, time2;
  /* take current time here */
  clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &time1);

  bestPath = findPath(startGridSquare, goalGridSquare, g_score);

  clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &time2);

  //cout << "time to generate best global path by Relaxed A* = " << (diff(time1, time2).tv_sec) * 1e3 + (diff(time1, time2).tv_nsec) * 1e-6 << " microseconds" << endl;

  //MyExcelFile << "\t" << (diff(time1, time2).tv_sec) * 1e3 + (diff(time1, time2).tv_nsec) * 1e-6;

  return bestPath;
}

/*******************************************************************************/
//Function Name: findPath
//Inputs: the map layout, the start and the goal gridSquares and a boolean to indicate if we will use break ties or not
//Output: the best path
//Description: it is used to generate the robot free path
/*********************************************************************************/

/**
**/
vector<int> AStarPlanner::findPath(int startGridSquare, int goalGridSquare, float g_score[])
{
  value++;
  vector<int> bestPath;
  vector<int> emptyPath;
  GridSquare CP;

  multiset<GridSquare> OPL;
  int currentGridSquare;

  //calculate g_score and f_score of the start position
  g_score[startGridSquare] = 0;
  CP.currentGridSquare = startGridSquare;
  CP.fCost = g_score[startGridSquare] + calculateHCost(startGridSquare, goalGridSquare);

  //add the start gridSquare to the open list
  OPL.insert(CP);
  currentGridSquare = startGridSquare;

  //while the open list is not empty continue the search or g_score(goalGridSquare) is equal to infinity
  while (!OPL.empty() && g_score[goalGridSquare] == infinity)
  {
    //choose the gridSquare that has the lowest cost fCost in the open set which is the begin of the multiset
    currentGridSquare = OPL.begin()->currentGridSquare;
    //remove the currentgridSquare from the openList
    OPL.erase(OPL.begin());
    //search the neighbors of the current gridSquare
    vector<int> neighborGridSquares;
    neighborGridSquares = findFreeNeighborGridSquare(currentGridSquare);
    for (uint i = 0; i < neighborGridSquares.size(); i++) //for each neighbor v of current gridSquare
    {
      // if the g_score of the neighbor is equal to INF: unvisited gridSquare
      if (g_score[neighborGridSquares[i]] == infinity)
      {
        g_score[neighborGridSquares[i]] = g_score[currentGridSquare] + getMoveCost(currentGridSquare, neighborGridSquares[i]);
        addNeighborGridSquareToOpenList(OPL, neighborGridSquares[i], goalGridSquare, g_score);
      } //end if
    }   //end for
  }     //end while

  if (g_score[goalGridSquare] != infinity) // if g_score(goalGridSquare)==INF : construct path
  {
    bestPath = constructPath(startGridSquare, goalGridSquare, g_score);
    return bestPath;
  }
  else
  {
    cout << "Failure to find a path !" << endl;
    return emptyPath;
  }
}

/*******************************************************************************/
//Function Name: constructPath
//Inputs: the start and the goal gridSquares
//Output: the best path
//Description: it is used to construct the robot path
/*********************************************************************************/
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


//Function Name: addNeighborGridSquareToOpenList
//Inputs: the open list, the neighbors gridSquare, the g_score matrix, the goal gridSquare
//Output:
//Description: it is used to add a neighbor gridSquare to the open list
/*********************************************************************************/
void AStarPlanner::addNeighborGridSquareToOpenList(multiset<GridSquare> &OPL, int neighborGridSquare, int goalGridSquare, float g_score[])
{
  GridSquare CP;
  CP.currentGridSquare = neighborGridSquare; //insert the neighborGridSquare
  CP.fCost = g_score[neighborGridSquare] + calculateHCost(neighborGridSquare, goalGridSquare);
  OPL.insert(CP);

}

/*******************************************************************************
 * Function Name: findFreeNeighborGridSquare
 * Inputs: the row and columun of the current GridSquare
 * Output: a vector of free neighbor gridSquares of the current gridSquare
 * Description:it is used to find the free neighbors gridSquares of a the current gridSquares in the grid
 
*********************************************************************************/

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
      {   neighborIndex= ((rowID + i )* width)+(colID + j);
        //neighborIndex = getCellIndex(rowID + i, colID + j);
        if (isFree(neighborIndex))
          freeNeighborGridSquares.push_back(neighborIndex);
      }
    }
  return freeNeighborGridSquares;
}

/*******************************************************************************/
//Function Name: isStartAndGoalValid
//Inputs: the start and Goal gridSquares
//Output: true if the start and the goal gridSquares are valid
//Description: check if the start and goal gridSquare are valid
/*********************************************************************************/
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

float AStarPlanner::getMoveCost(int i1, int j1, int i2, int j2)
{
  float moveCost = INFINIT_COST; //start cost with maximum value. Change it to real cost of gridSquares are connected
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

float AStarPlanner::getMoveCost(int gridSquareID1, int gridSquareID2)
{
  int i1 = 0, i2 = 0, j1 = 0, j2 = 0;

  i1 = getGridSquareRowID(gridSquareID1);
  j1 = getGridSquareColID(gridSquareID1);
  i2 = getGridSquareRowID(gridSquareID2);
  j2 = getGridSquareColID(gridSquareID2);

  return getMoveCost(i1, j1, i2, j2);
}

//verify if the gridSquare(i,j) is free
bool AStarPlanner::isFree(int i, int j)
{ 
  int gridSquareID=(i*width)+j;
  //int GridSquareID = getCellIndex(i, j);
  return OGM[gridSquareID];
}

//verify if the gridSquare(i,j) is free
bool AStarPlanner::isFree(int gridSquareID)
{
  return OGM[gridSquareID];
}
};

/**
  Overloaded operator for comparing cost among two gridSquares.

**/
bool operator<(GridSquare const &c1, GridSquare const &c2) { return c1.fCost < c2.fCost; }