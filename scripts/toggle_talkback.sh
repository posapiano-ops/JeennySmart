output=$(adb shell settings get secure enabled_accessibility_services)

if [[ "$output" == "com.android.talkback/com.google.android.marvin.talkback.TalkBackService" ]]; then
  adb shell settings put secure enabled_accessibility_services com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService
else
  adb shell settings put secure enabled_accessibility_services com.android.talkback/com.google.android.marvin.talkback.TalkBackService
fi