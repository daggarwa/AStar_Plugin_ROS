
#include <string.h>
#include <ros/ros.h>
#include <geometry_msgs/PoseStamped.h>
#include <tf/tf.h>
#include <set>

/** for global path planner interface */
#include <costmap_2d/costmap_2d_ros.h>
#include <costmap_2d/costmap_2d.h>
#include <nav_core/base_global_planner.h>
#include <geometry_msgs/PoseStamped.h>


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

  ros::NodeHandle ROSNodeHandle;
  float originX;
  float originY;
  float resolution;
  costmap_2d::Costmap2DROS *costmap_ros_;
  costmap_2d::Costmap2D *costmap_;
  bool initialized_;
  int width;
  int height;
  AStarPlanner(ros::NodeHandle &); //this constructor is may be not needed
  AStarPlanner();
  AStarPlanner(std::string name, costmap_2d::Costmap2DROS *costmap_ros);

  
  /** overriden methods from interface nav_core::BaseGlobalPlanner **/
  void initialize(std::string name, costmap_2d::Costmap2DROS *costmap_ros);
  bool makePlan(const geometry_msgs::PoseStamped &start,
                const geometry_msgs::PoseStamped &goal,
                std::vector<geometry_msgs::PoseStamped> &plan);

  /** Helper methods**/
  void convertToMapCoordinates(float &x, float &y);
  int getGridSquareIndex(float x, float y);
  void getGridSquareCoordinates(int index, float &x, float &y);
  bool isCoordinateInBounds(float x, float y);
  vector<int> runAStarOnGrid(int startGridSquare, int goalGridSquare);
  vector<int> findPath(int startGridSquare, int goalGridSquare, float g_score[]);
  vector<int> constructPath(int startGridSquare, int goalGridSquare, float g_score[]);
  void addNeighborGridSquareToOpenList(multiset<GridSquare> &OPL, int neighborGridSquare, int goalGridSquare, float g_score[]);
  vector<int> findFreeNeighborGridSquare(int gridSquareIndex);
  bool isStartAndGoalValid(int startGridSquare, int goalGridSquare);
  float getMoveCost(int gridSquareIndex1, int gridSquareIndex2);
  float getMoveCost(int i1, int j1, int i2, int j2);
  float calculateHScore(int gridSquareIndex, int goalGridSquare);
  int calculateGridSquareIndex(int i, int j);
  int getGridSquareRowIndex(int index);
  int getGridSquareColIndex(int index);
  bool isFree(int gridSquareIndex); 
  bool isFree(int i, int j);
  
};
};
#endif