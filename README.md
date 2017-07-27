# A*_Plugin_ROS
A* Global Planner Plugin for ROS

Developed on ROS Indigo and using C++


Follow steps below to run the plugin on the system:

1. Install turtlebot on ROS Indigo(or follow similar steps for other ROS versions ) as below:
   http://wiki.ros.org/turtlebot/Tutorials/indigo/Turtlebot%20Installation
   
2. Clone the repository to your desktop

3. roscd to turtlebot_navigation. Add following line in your move_base.launch.xml file under launch/includes(you may need to sudo):

   <param name="base_global_planner" value="astar_plugin/AStarPlanner"/>

4. Type the following to launch stage and rviz with loaded map and turtlebot:
    
   roslaunch turtlebot_stage turtlebot_in_stage.launch
   
5. Now click on “2D nav goal” button (at the top) in rviz and choose a goal location. You can now see your robot moving to its goal.

