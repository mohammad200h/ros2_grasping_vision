mkdir foundationpose_ws && mkdir foundationpose_ws/src && cd foundationpose_ws/src && \
git clone git@github.com:mohammad200h/image_viewer_foundation_pose.git && \
git clone git@github.com:mohammad200h/foundation_pose_interfaces.git && \
git clone git@github.com:mohammad200h/foundation_pose.git

cd ../..
mkdir g_sam_ws && mkdir g_sam_ws/src && cd g_sam_ws/src && \
git clone git@github.com:mohammad200h/image_viewer_g_sam.git && \
git clone git@github.com:mohammad200h/g_sam.git && \
git clone git@github.com:mohammad200h/fake_realsense.git && \
git clone git@github.com:mohammad200h/fake_g_sam.git

cd ../..
mkdir realsense_ws && mkdir realsense_ws/src && cd realsense_ws/src && \
git clone git@github.com:mohammad200h/realsense-ros.git
