project(${CMAKE_PROJECT_NAME}_lib)

set(HEADER_FILES
)
set(SOURCE_FILES
)

if (EXISTS ${SOURCE_FILES})
    # The library contains header and source files.
    add_library(${CMAKE_PROJECT_NAME}_lib STATIC
        ${SOURCE_FILES}
        ${HEADER_FILES}
    )
else()
    # The library only contains header files.
    add_library(${CMAKE_PROJECT_NAME}_lib INTERFACE)
endif()