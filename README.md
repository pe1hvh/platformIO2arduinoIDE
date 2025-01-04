platformIO2arduinoIDE.sh
========================

This bash script is build for converting the code build in VSCode with the PlatformIO pluging to sketches for the ArduinoIDE.
While the source code in PlatformIO can be placed in several directories.

PlatformIO structuur
--------------------
This script is based on the standard structure of the PlatformIO project: see the following example:
~~~
|--lib
|  |
|  |--Bar
|  |  |--docs
|  |  |--examples
|  |  |--src
|  |     |- Bar.cpp
|  |     |- Bar.h
|  |
|  |--Foo
|  |  |- Foo.cpp
|  |  |- Foo.h
|  |
|
|- platformio.ini
|--src
   |- main.cpp
~~~

Converting
----------
- All the .cpp and .h files will be placed in the git repo special for the ArduinoIDE.
- .cpp files are renamed to .ino files 
- main.cpp will be renamed to <projectName>.ino file.
- delete compiler preprocessor directives
- delete some unnessary include statements in ino files other than main.ino



Test in Arduino IDE 1.8.19
--------------------------
The converted sketches are tested in the Arduino IDE 1.8.19.
