# Set a variable for commands below
set(PROJECT_NAME Marlin)

# Define your project and language
project(${PROJECT_NAME} C CXX)

set(${PROJECT_NAME}_BOARD mega)

# Define the source code
file(GLOB SOURCES "*.cpp")
set(${PROJECT_NAME}_SRCS ${SOURCES})

# Define the port for uploading code to the Arduino
set(${PROJECT_NAME}_PORT COM6)


# Command to generate code arduino firmware (.hex file)
generate_arduino_firmware(${PROJECT_NAME})

