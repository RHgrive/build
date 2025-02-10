cmake_minimum_required(VERSION 3.15)
project(MyDylib)

set(CMAKE_OSX_ARCHITECTURES "arm64;x86_64")
set(CMAKE_SYSTEM_NAME iOS)
set(CMAKE_OSX_SYSROOT iphoneos)

add_library(MyDylib SHARED
    MyDylib.m
)

# UIKitをリンク
target_link_libraries(MyDylib PUBLIC UIKit)
