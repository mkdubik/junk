java -jar apktool_2.2.2.jar b -f se.mecenat.app-1 -o mecenat.apk
jarsigner -sigalg MD5withRSA -digestalg SHA1 -keystore ~/.android/debug.keystore  -storepass android mecenat.apk androiddebugkey


~/Android/sdk/build-tools/23.0.3/zipalign 4 mecenat.apk mecenat.apk
~/Android/sdk/platform-tools/adb install -r mecenat.apk
~/Android/sdk/platform-tools/adb shell am start -a android.intent.action.MAIN -n se.mecenat.app/.MainActivity
