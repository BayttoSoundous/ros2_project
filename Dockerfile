FROM osrf/ros:foxy-desktop

RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-colcon-common-extensions \
    && rm -rf /var/lib/apt/lists/*

RUN echo "source /opt/ros/foxy/setup.bash" >> ~/.bashrc

CMD ["bash"]
