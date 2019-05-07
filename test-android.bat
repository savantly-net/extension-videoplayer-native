IF "%1"=="" (
  echo 'pass location of bob.jar as parameter if you want to build
) else (
  java -jar %1 --variant debug --with-symbols --archive --platform armv7-android build bundle -bo build/armv7-android
)

adb uninstall com.defoldexample.videoplayer
adb install -r build\armv7-android\VideoPlayer\VideoPlayer.apk
adb shell am start -a android.intent.action.MAIN -n com.defoldexample.videoplayer/com.dynamo.android.DefoldActivity


REM adb logcat | findstr "defold videoplayer"