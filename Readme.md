# Introdunction
This is vision pipline for grasping base on ros2. We take advantage of:
1. realsense dpeth camera
2. grounded sam
3. foundation pose

We have three different ros2 workspaces for g_sam, foundation_pose and realsense.
Each workspace is accompanied by it's own docker image.

Please look at these links to see docker file for [foundation_pose](https://github.com/mohammad200h/foundation_pose/tree/main/Docker), [g_sam](https://github.com/mohammad200h/g_sam/tree/main/Docker) and [realsense](https://github.com/mohammad200h/realsense-ros/tree/ros2-master/Docker):


To setup all the workspaces run the following commands:
```
./setup.sh
```

Then navigate to each foundation_pose, g_sam and realsense to create docker images and containers.

# Running Foundation pose using fake_realsense (working)

1. run container for g_sam_ws
2. inside container spawn fake_realsense
```
ros2 run fake_realsense fake_realsense
```
3. inside container spawn g_sam
```
ros2 run g_sam g_sam
```
4. to visuliza how g_sam works run inside container
```
ros2 run image_viewer_g_sam image_viewer_g_sam
```

5. run container for foundationpose_ws
6. inside container spawn foundation_pose
```
ros2 run foundation_pose foundation_pose
```
7. to visulize foundation_pose run inside container
```
ros2 run image_viewer_foundation_pose image_viewer_foundation_pose
```
# Running Foundation pose with realsense (not working)
1. run container for realsense
2. inside container run
```
ros2 launch realsense2_camera rs_launch.py depth_module.depth_profile:=640x480x30 rgb_camera.color_profile:=640x480x30 rgb_camera.color_format:=BGR8 align_depth.enable:=true
```

3. run container for g_sam_ws
3. inside container spawn g_sam
```
ros2 run g_sam g_sam
```
4. to visuliza how g_sam works run inside container
```
ros2 run image_viewer_g_sam image_viewer_g_sam
```

5. run container for foundationpose_ws
6. inside container spawn foundation_pose
```
ros2 run foundation_pose foundation_pose
```
7. to visulize foundation_pose run inside container
```
ros2 run image_viewer_foundation_pose image_viewer_foundation_pose
```


# Issue
The issue seems to be the problem with depth information. I don't know exactly what.
Registration will fail with wrong depth scale.
Here is two other repos trying to implement foundation pose:
https://github.com/ammar-n-abbas/FoundationPoseROS2
https://github.com/shubho-upenn/ROS_FoundationPose
