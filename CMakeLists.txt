cmake_minimum_required(VERSION 3.0)
set(CMAKE_MODULE_PATH  ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_LIST_DIR}/cmake/modules)

#====================================================================#
#  Custom path to Arduino SDK can be set here.                       #
#  It can also be set from command line. eg.:                        #
#  cmake .. -DARDUINO_SDK_PATH="/path/to/arduino-1.x.x"              #
#====================================================================#
#set(ARDUINO_SDK_PATH ${CMAKE_CURRENT_LIST_DIR}/arduino-1.6.8)
#set(ARDUINO_SDK_PATH /home/tom/git/BigBox-Dual-Marlin/ArduinoAddons/Arduino_1.6.x)

#====================================================================#
#  Set included cmake files                                          #
#====================================================================#
include(Arduino_SDK) # Find the intallpath of Arduino SDK
include(marlin_cmake_functions)

#====================================================================#
#  Set toolchain file for arduino                                    #
#====================================================================#
set(CMAKE_TOOLCHAIN_FILE cmake/ArduinoToolchain.cmake) # Arduino Toolchain

#====================================================================#
#  Setup Project                                                     #
#====================================================================#
project(Marlin C CXX)

#====================================================================#
#  Register non standard hardware                                    #
#====================================================================#
#register_hardware_platform(/home/tom/test/Sanguino)

#====================================================================#
#  Register non standard arduino libraries                                    #
#====================================================================#
#register_hardware_platform(/home/tom/test/Sanguino)

#====================================================================#
#  Print any info                                                    #
#  print_board_list()                                                #
#  print_programmer_list()                                           #
#  print_board_settings(mega)                                        #
#====================================================================#
print_board_list()
print_programmer_list()

#====================================================================#
#  add the project directory into build                              #
#====================================================================#
add_subdirectory(Marlin)
