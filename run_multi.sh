#!/bin/bash

python run.py  ./configs/Dynamic/Bonn/bonn_balloon.yaml
python run.py  ./configs/Dynamic/Bonn/bonn_balloon2.yaml
python run.py  ./configs/Dynamic/Bonn/bonn_crowd.yaml
python run.py  ./configs/Dynamic/Bonn/bonn_crowd2.yaml
python run.py  ./configs/Dynamic/Bonn/bonn_moving_nonobstructing_box.yaml
python run.py  ./configs/Dynamic/Bonn/bonn_moving_nonobstructing_box2.yaml
python run.py  ./configs/Dynamic/Bonn/bonn_person_tracking.yaml
python run.py  ./configs/Dynamic/Bonn/bonn_person_tracking2.yaml

python run.py  ./configs/Dynamic/TUM_RGBD/freiburg2_desk_with_person.yaml
python run.py  ./configs/Dynamic/TUM_RGBD/freiburg3_sitting_halfsphere_static.yaml
python run.py  ./configs/Dynamic/TUM_RGBD/freiburg3_sitting_halfsphere.yaml
python run.py  ./configs/Dynamic/TUM_RGBD/freiburg3_sitting_rpy.yaml
python run.py  ./configs/Dynamic/TUM_RGBD/freiburg3_sitting_xyz.yaml
python run.py  ./configs/Dynamic/TUM_RGBD/freiburg3_walking_halfsphere_static.yaml
python run.py  ./configs/Dynamic/TUM_RGBD/freiburg3_walking_halfsphere.yaml
python run.py  ./configs/Dynamic/TUM_RGBD/freiburg3_walking_rpy.yaml
python run.py  ./configs/Dynamic/TUM_RGBD/freiburg3_walking_xyz.yaml