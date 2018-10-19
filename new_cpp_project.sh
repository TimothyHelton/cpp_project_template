#!/usr/bin/env bash

# Exit if name argument is not given
if [ -z "$*" ]; then
    echo "A project name argument must be provided."
    exit 0
fi

NAME=$1


################################################################################


# Download latest version of the build file
curl -O https://raw.githubusercontent.com/TimothyHelton/cpp_project_template/master/create_project.sh
chmod u+x create_project.sh

# Create Project
./create_project.sh ${NAME}

# Change to the directory of the project
cd ${NAME}

echo "Changed to " `pwd`
sed -i "" 's|MyProject|'${NAME}'|g' CMakeLists.txt
sed -i "" "s|MyProject|'${NAME}'|g" docs/Doxyfile
