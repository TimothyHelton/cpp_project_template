# C++ Project Template
When setting out on a new project in C++ there are a few configuration steps
which need to be completed prior to actually getting down to writing code.
This repository is going to be a C++ project template that already has the
following components: 

- Directory Structure
- Make Build (CMake)
- Unit Test Framework (Google Test)
- API Documentation (Doxygen)

Feel free to fork this repository and tailor it to suit you.

## Procedure
1. Clone the Repository
    ```bash
    git clone
    ```
1. In the top level **CMakeLists.txt**:
    1. Line 2: Change the variable **MyProject** to the name of your project.
        ```cmake
        project(NewProject)
        ```
        - This variable will be used in a couple of different places.
            - MyProject_run: will be the main executable name
            - MyProject_lib: will be the project library name
    1. Line 4: Set the version of C++ to use.  For example let's set up the
    CoolProject to use C++ 11.
        ```cmake
        set(CMAKE_CXX_STANDARD 11)
        ```
1. Clone Google Test project into the `test/lib` directory.
    ```bash
    git clone git@github.com:google/googletest.git MyProject/tests/lib
    ```
1. Rename the Google Test main directory to `googletest-master`.
    ```bash
    mv MyProject/tests/lib/googletest MyProject/tests/lib/googletest-master
    ```
1. Update project name and description in the `Doxyfile` located in the `docs`
directory.
    1. Update line `PROJECT_NAME`
        1. This name will appear on each documentation page.
    1. Update line `PROJECT_NUMBER`
        1. This is the version number of your project.
    1. Update line `PROJECT_BRIEF`
        1. Any text entered here will also appear on each documentation page.
        Try not to make this one too long.
1. Reload the top CMake file.

## CLION IDE Specific Instructions
I started using an IDE from [JET Brains](https://www.jetbrains.com/) tailored
for Python called [PyCharm](https://www.jetbrains.com/pycharm/), and thought
it helped me write better code.
I'd been wanting to learn C++ and decided to give JET Brains C/C++ IDE called
[CLion](https://www.jetbrains.com/clion/) a try.
The code completion, interactive suggestions, debugger, introspection tools, 
and built in test execution are very handy.
There are a couple extra details to set when using this IDE.

1. The IDE allows you to mark directories with their desired purpose.
To mark a directory right click on the directory name in the `Project` window
and select `Mark Directory as` from the drop down menu. 
    1. Mark the `src` directory as `Project Sources and Headers`
    1. Mark the `tests/lib/googletest-master` directory as  `Library Files`
1. Setup the `Run/Debug Configuration` by selecting `Edit Configurations...`
from the pull down menu from the run button (green triangle) in the upper right
corner.
    1. Update Doxygen Build to execute the unit test suite.
        1. Select Doxygen from the Application menu on the left.
        1. Choose the **executable** for Doxygen to be `Unit_Tests_run`.
    1. Create a `Google Test` configuration
        1. In the upper left corner select the plus symbol.
        1. Chose `Google Test` from the drop down menu.
        1. Set **Name** to `Unit Tests`.
        1. Set **Target** to `Unit_Tests_run`.
        
## Wrap Up
That should be all it takes to start writing code.
If you find any issues or bugs with this repository please file an issue on
GitHub.

Hope you find this template useful and enjoy learning C++!