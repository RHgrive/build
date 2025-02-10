cmake_minimum_required(VERSION 3.15)
project(MyDylib)

set(CMAKE_OSX_ARCHITECTURES "arm64;x86_64")
set(CMAKE_SYSTEM_NAME iOS)

# SDKのパスをxcrunで取得
execute_process(COMMAND xcrun --sdk iphoneos --show-sdk-path
                  OUTPUT_VARIABLE IOS_SDK_PATH
                  OUTPUT_STRIP_TRAILING_WHITESPACE)

set(CMAKE_OSX_SYSROOT "${IOS_SDK_PATH}")

add_library(MyDylib SHARED
    MyDylib.m
)

# UIKitをリンク
target_link_libraries(MyDylib PUBLIC UIKit)
