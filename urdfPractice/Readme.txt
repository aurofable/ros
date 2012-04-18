This Readme covers the use of and learning of the URDF format
http://www.ros.org/wiki/urdf from ROS.

URDF is an XML format for representing a robot model.
In this case, we will be running through examples and learning
to use the URDF format, in the hopes of eventually creating
our navgroup car model.

Tutorials can be found at 
http://www.ros.org/wiki/urdf/Tutorials

For our specific project model, I have written a simple car
model, with references to some sources online. 

The model still requires work in linking up the ackermann parts.
I have also cleaned up some of the code, hopefully making
it more readable.

The model was coded in a XML macro language called xacro
http://www.ros.org/wiki/xacro, to aid readability and maintainability.

To convert an xacro file to a urdf file, use the command:
$   rosrun xacro xacro.py car.urdf.xacro > car.urdf

To view the model run
$   roslaunch urdf_tutorial display.launch model:=car.urdf gui:=True

or to simulate it run

$   roslaunch car.launch
