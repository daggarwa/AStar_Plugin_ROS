#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>
#include <string>

/** include ros libraries**********************/
#include <ros/ros.h>

#include <actionlib/client/simple_action_client.h>
#include <move_base_msgs/MoveBaseAction.h>

#include <geometry_msgs/Twist.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include <move_base_msgs/MoveBaseGoal.h>
#include <move_base_msgs/MoveBaseActionGoal.h>

#include "sensor_msgs/LaserScan.h"
#include "sensor_msgs/PointCloud2.h"

#include <nav_msgs/Odometry.h>
#include <nav_msgs/OccupancyGrid.h>
#include <nav_msgs/Path.h>
#include <nav_msgs/GetPlan.h>

#include <tf/tf.h>
#include <tf/transform_datatypes.h>
#include <tf/transform_listener.h>
/** ********************************************/

#include <boost/foreach.hpp>

/** for global path planner interface */
#include <costmap_2d/costmap_2d_ros.h>
#include <costmap_2d/costmap_2d.h>
#include <nav_core/base_global_planner.h>

#include <geometry_msgs/PoseStamped.h>
#include <angles/angles.h>

//#include <pcl_conversions/pcl_conversions.h>
#include <base_local_planner/world_model.h>
#include <base_local_planner/costmap_model.h>

#include <set>
using namespace std;
using std::string;

#ifndef ASTAR_PLANNER_CPP
#define ASTAR_PLANNER_CPP

/**
 * @struct GridSquares
 * @brief A struct that represents a GridSquare and its fCost.
 */
struct GridSquare
{
  int currentGridSquare;
  float fCost;
};

namespace astar_plugin
{

class AStarPlanner : public nav_core::BaseGlobalPlanner
{
public:
  AStarPlanner(ros::NodeHandle &); //this constructor is may be not needed
  AStarPlanner();
  AStarPlanner(std::string name, costmap_2d::Costmap2DROS *costmap_ros);

  ros::NodeHandle ROSNodeHandle;

  /** overriden methods from interface nav_core::BaseGlobalPlanner **/
  void initialize(std::string name, costmap_2d::Costmap2DROS *costmap_ros);
  bool makePlan(const geometry_msgs::PoseStamped &start,
                const geometry_msgs::PoseStamped &goal,
                std::vector<geometry_msgs::PoseStamped> &plan);

  void convertToMapCoordinates(float &x, float &y);
  int getGridSquareIndex(float x, float y);
  void getGridSquareIndices(int index, float &x, float &y);
  bool isCoordinateInBounds(float x, float y);
  vector<int> runAStarOnGrid(int startGridSquare, int goalGridSquare);
  vector<int> findPath(int startGridSquare, int goalGridSquare, float g_score[]);
  vector<int> constructPath(int startGridSquare, int goalGridSquare, float g_score[]);
  void addNeighborGridSquareToOpenList(multiset<GridSquare> &OPL, int neighborGridSquare, int goalGridSquare, float g_score[]);
  vector<int> findFreeNeighborGridSquare(int gridSquareID);
  bool isStartAndGoalValid(int startGridSquare, int goalGridSquare);
  float getMoveCost(int gridSquareID1, int gridSquareID2);
  float getMoveCost(int i1, int j1, int i2, int j2);
  bool isFree(int gridSquareID); //returns true if the gridSquare is Free
  bool isFree(int i, int j);

  float originX;
  float originY;
  float resolution;
  costmap_2d::Costmap2DROS *costmap_ros_;
  double step_size_, min_dist_from_robot_;
  costmap_2d::Costmap2D *costmap_;
  bool initialized_;
  int width;
  int height;


  float calculateHCost(int gridSquareID, int goalGridSquare)
  {
    int x1 = getGridSquareRowID(goalGridSquare);
    int y1 = getGridSquareColID(goalGridSquare);
    int x2 = getGridSquareRowID(gridSquareID);
    int y2 = getGridSquareColID(gridSquareID);
    return abs(x1 - x2) + abs(y1 - y2);
  }

  int calculateGridSquareIndex(int i, int j) //get the index of the gridSquare to be used in Path
  {
    return (i * width) + j;
  }
  int getGridSquareRowID(int index) //get the row ID from gridSquare index
  {
    return index / width;
  }
  int getGridSquareColID(int index) //get column ID from gridSquare index
  {
    return index % width;
  }

};
};
#endif