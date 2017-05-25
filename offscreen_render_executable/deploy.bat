call ndk-build
adb logcat -c
adb push %~dp0/obj/local/armeabi-v7a/offscreen_render_executable /data/local/tmp/
adb shell chmod +x /data/local/tmp/offscreen_render_executable
adb logcat | grep survival
rem adb shell /data/local/tmp/offscreen_render_executable