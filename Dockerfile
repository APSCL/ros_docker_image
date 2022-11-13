FROM ros:galactic-ros-base-focal

# install ros2 packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    ros-galactic-desktop=0.9.3-2* \
    ros-galactic-navigation2 ros-galactic-nav2-bringup \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/APSCL/ros_galactic_ws.git

WORKDIR "/ros_galactic_ws"
RUN git submodule init
RUN git submodule update

