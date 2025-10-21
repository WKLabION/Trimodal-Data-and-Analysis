Prerequisites:
LabVIEW, 64-bit, version 2015 or higher.
8GB RAM

PI stage Q-545 SDK：
The software's website is https://www.pi-china.cn/zh_cn/products/software-suite.
You can find the LabVIEW SDK in the PI Software Suite C-990.CD1 package.

Newport stage ONE - XY60 SDK：
The address of this software is located in the  'sub vi\XPS-UNIFIED' directory.

whole brain TP.lvproj
The project file of this LabVIEW project. This project is based on the state machine framework.

main ui.vi
This program is the launcher for the whole system control program. 
This program could run directly when the stages and NI cards are connected to the computer directly (see 'system configuration.ini' below).

global variables\
This folder contains all the global variables of the program.

sub vi\
This folder contains all the sub-Vis of the program.

tiff\
This folder contains content related to operations such as TIFF file storage.

type def\
This folder contains all the custom data types (type def.) within the program.

last configuration.ini
This file records the set of parameters used by the program during its last run.

system configuration.ini
This file is the system parameter file of the program, which contains detailed definitions of all parameters and configuration information of all hardware.
You can directly modify it to meet different operational requirements. By adjusting these parameters, you can control the logic of the hardware devices to ensure they operate as expected.