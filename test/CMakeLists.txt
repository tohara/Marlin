cmake_minimum_required(VERSION 3.2)
project(MyTest)

set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/../cmake)
include(marlin_cmake_functions)

get_motherboard(${CMAKE_CURRENT_LIST_DIR}/../Marlin)




#[[
read_define_value_from_header(${CMAKE_CURRENT_LIST_DIR}/../Marlin/Configuration.h MOTHERBOARD)

read_define_value_from_header(${CMAKE_CURRENT_LIST_DIR}/../Marlin/boards.h ${MOTHERBOARD_VALUE})

set(MOTHERBOARD_VALUE ${MOTHERBOARD_VALUE} CACHE STRING "Test" FORCE)

read_define_value_from_header(${CMAKE_CURRENT_LIST_DIR}/../Marlin/Configuration.h CUSTOM_MACHINE_NAME)


read_define_value_from_header(${CMAKE_CURRENT_LIST_DIR}/../Marlin/Configuration.h STRING_CONFIG_H_AUTHOR)


read_define_value_from_header(${CMAKE_CURRENT_LIST_DIR}/../Marlin/Configuration.h SHOW_BOOTSCREEN)

read_define_value_from_header(${CMAKE_CURRENT_LIST_DIR}/../Marlin/Configuration.h SHOULD_NOT_BE_FOUND)

read_define_value_from_header(${CMAKE_CURRENT_LIST_DIR}/../Marlin/PathNotFound.h PATH_NOT_FOUND)
]]