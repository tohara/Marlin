
# this line is needed only if you use boards with selectable cpu (like mega, pro etc)
# and this line should go before call to "cmake/ArduinoToolchain.cmake"
# this is durty hack and should be fixed somewhen, because it should go to 
# particular cmake subdirectory
set(ARDUINO_CPU atmega2560)

set(ARDUINO_SDK_PATH ${CMAKE_CURRENT_LIST_DIR}/arduino-1.6.8)

include(${CMAKE_CURRENT_LIST_DIR}/cmake/Arduino_SDK.cmake)
set(CMAKE_TOOLCHAIN_FILE cmake/ArduinoToolchain.cmake) # Arduino Toolchain

#MESSAGE(${Marlin_SOURCE_DIR}/cmake/ArduinoToolchain.cmake)
#include(${CMAKE_CURRENT_LIST_DIR}/cmake/ArduinoToolchain.cmake)


cmake_minimum_required(VERSION 2.8)
#====================================================================#
#  Setup Project                                                     #
#====================================================================#
project(Marlin C CXX)

print_board_list()
print_programmer_list()

# add libraries to project
#link_directories(${ARDUINO_SDK_PATH}/libraries)


# add the project directory into build
add_subdirectory(Marlin)
