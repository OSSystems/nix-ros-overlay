# Run:
# ros2 launch turtlebot4_gz_bringup turtlebot4_gz.launch.py model:=lite 

{ pkgs ? import ../. {} }:
with pkgs;
with rosPackages.jazzy;
with pythonPackages;

mkShell {
  buildInputs = [
    glibcLocales
    (buildEnv { paths = [
      ros-base
      turtlebot4-gz-bringup
    ]; })
  ];

  ROS_HOSTNAME = "localhost";
  ROS_MASTER_URI = "http://localhost:11311";
  TURTLEBOT3_MODEL = "burger";
}
