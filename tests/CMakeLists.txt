project(${CMAKE_PROJECT_NAME}_tests)

if(NOT EXISTS lib/googletest)
    file(MAKE_DIRECTORY lib/googletest)
endif()

add_subdirectory(lib/googletest)
add_subdirectory(unit_tests)