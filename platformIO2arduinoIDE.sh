#!/bin/bash
read -p "Enter user: " user
projectName="frequentie-generator"
projectDirSource="/home/$user/Documents/GitHub/frequency-generator-cpp" 
projectDirTarget="/home/$user/Documents/GitHub/$projectName" 

# Copy all .cpp (other than main.cpp) and .h files
cp $projectDirSource/lib/**/src/* $projectDirTarget
cp $projectDirSource/include/* $projectDirTarget

# Rename .cpp to .ino
for file in $projectDirTarget/*.cpp; do
    mv -- "$file" "${file%.cpp}.ino"
done

# Remove compilers directives
sed -i '/#ifndef /d' $projectDirTarget/*h
sed -i '/#define _/d' $projectDirTarget/*h
sed -i '/#endif/d' $projectDirTarget/*h

# Remove includes in ino files
sed -i '/#include /d' $projectDirTarget/*.ino

# Copy main.cpp to projectname.ino
cp $projectDirSource/src/main.cpp $projectDirTarget/$projectName.ino
