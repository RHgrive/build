cmake_minimum_required(VERSION 3.15)
project(MyDylib)

set(CMAKE_OSX_ARCHITECTURES "arm64;x86_64")
set(CMAKE_SYSTEM_NAME iOS)

# SDKのパスを明示的に指定する
set(CMAKE_OSX_SYSROOT "${CMAKE_CURRENT_SOURCE_DIR}/../../Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk")

add_library(MyDylib SHARED
    MyDylib.m
)

# UIKitをリンク
target_link_libraries(MyDylib PUBLIC UIKit)
