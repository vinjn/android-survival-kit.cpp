SET APK_NAME=_template_executable
adb logcat -c
adb push %~dp0/obj/local/armeabi-v7a/%APK_NAME% /data/local/tmp/
adb shell chmod +x /data/local/tmp/%APK_NAME%
adb logcat | grep playpen
rem adb shell /data/local/tmp/%APK_NAME%