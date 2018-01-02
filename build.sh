#!bin/bash

./gradlew clean assembleRelease

[ -f app/app-release.apk ] || cp app/build/outputs/apk/release/app-release.apk app/app-release.apk
[ -f app/app-release.apk ] && echo "APK Compiled" || exit 1
