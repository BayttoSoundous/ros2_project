FROM osrf/ros:foxy-desktop

# Mettre à jour les paquets et installer les dépendances de base
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-colcon-common-extensions \
    && rm -rf /var/lib/apt/lists/*

# Configurer ROS Foxy
RUN echo "source /opt/ros/foxy/setup.bash" >> ~/.bashrc

CMD ["bash"]
