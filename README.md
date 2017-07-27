
A* Global Planner Plugin for ROS

Developed on ROS Indigo and using C++


Follow steps below to run the plugin on the system:

1. Install turtlebot on ROS Indigo(or follow similar steps for other ROS versions ) as below:
   http://wiki.ros.org/turtlebot/Tutorials/indigo/Turtlebot%20Installation
   
2. Clone the repository to your desktop

3. roscd to turtlebot_navigation package. Add following line in your move_base.launch.xml file under launch/includes(you may need to  sudo): \<param name="base_global_planner" value="astar_plugin/AStarPlanner"/\>
     
4. Copy the files in map folder under astar_planner ros package from the cloned reposiory to the path below:

     /opt/ros/\<distro\>/share/turtlebot_stage/maps
     
5. Type the following to launch stage and rviz with loaded map and turtlebot:
    
   roslaunch turtlebot_stage turtlebot_in_stage.launch
   
6. Now click on “2D nav goal” button (at the top) in rviz and choose a goal location. You can now see your robot moving to its goal.

NOTE: Sometimes error can come while launching turtlebot_stage due to incorrect path of amcl launch file. This is known error.
"opt/ros/indigo/share/turtlebot_navigation/launch/includes/amcl.launch.xml: Invalid roslaunch XML syntax: [Errno 2] No such file or directory: u'/opt/ros/indigo/share/turtlebot_navigation/launch/includes/amcl.launch.xml'"

For this we have to open turtlebot_in_stage.launch from turtlebot package (might require sudo) and changing the following :
\<include file="$(find turtlebot_navigation)/launch/includes/amcl.launch.xml" \>
to: \<include file="$(find turtlebot_navigation)/launch/includes/amcl/amcl.launch.xml"\>

or  even this:
\<arg name="custom_amcl_launch_file" default="$(find turtlebot_navigation)/launch/includes/amcl/$(arg 3d_sensor)_amcl.launch.xml"/ \>
\<include file="$(arg custom_amcl_launch_file)"\>
