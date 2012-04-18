#!/bin/bash

# Used to check the path, case of ImportError
# e.g. ImportError: No module named ros
# Referred to http://www.ros.org/wiki/ROS/EnvironmentVariables

currPythonPath= `echo $PYTHONPATH`
currROSPackOath= `echo $ROS_PACKAGE_PATH`

export PYTHONPATH=$PYTHONPATH:$ROS_ROOT/core/roslib/src
