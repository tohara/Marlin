include(${Marlin_SOURCE_DIR}/arduino.cmake)


file(GLOB SOURCES "*.cpp")

add_executable(Marlin ${SOURCES})

target_link_libraries(Marlin arduinocore U8glib)

