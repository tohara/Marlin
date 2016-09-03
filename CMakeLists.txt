cmake_minimum_required(VERSION 2.8)

#set(ARDUINO_SDK_PATH ${CMAKE_CURRENT_LIST_DIR}/arduino-1.6.8)
#set(ARDUINO_SDK_PATH /home/tom/git/BigBox-Dual-Marlin/ArduinoAddons/Arduino_1.6.x)

include(${CMAKE_CURRENT_LIST_DIR}/cmake/Arduino_SDK.cmake)
set(CMAKE_TOOLCHAIN_FILE cmake/ArduinoToolchain.cmake) # Arduino Toolchain


#====================================================================#
#  Setup Project                                                     #
#====================================================================#
project(Marlin C CXX)

include(marlin_cmake_functions)


register_hardware_platform(/home/tom/test/Sanguino)

print_board_list()
print_programmer_list()
#print_board_settings(mega)


# add the project directory into build
add_subdirectory(Marlin)
