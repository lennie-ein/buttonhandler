cmake_minimum_required(VERSION 3.4.1)

add_library(button_handler SHARED
        src/main/button_handler.cpp)

find_library(log-lib log)

target_link_libraries(button_handler ${log-lib})
