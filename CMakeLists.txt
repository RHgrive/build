cmake_minimum_required(VERSION 3.15)
project(MyDylib)

set(CMAKE_SYSTEM_NAME iOS)
# シミュレータ用にアーキテクチャを指定
set(CMAKE_OSX_ARCHITECTURES "arm64;x86_64")  # 必要に応じて変更

# 正しいSDKパスを指定
set(CMAKE_OSX_SYSROOT "/Applications/Xcode_15.4.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS17.5.sdk")

add_library(MyDylib SHARED
    MyDylib.m
)

# UIKitをリンク
target_link_libraries(MyDylib PUBLIC UIKit)
