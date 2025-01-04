platformIO2arduinoIDE.sh
========================

This script essentially prepares a C++ project (build with VScode and the PlatformIO plugin) for use in the Arduino IDE by adjusting file extensions and removing certain C++ specific elements that are not supported in Arduino sketches.

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
