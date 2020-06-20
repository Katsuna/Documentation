# Documentation - Updater


The Updater app is a fork of CyanogenMod's CMUpdater: https://github.com/CyanogenMod/android_packages_apps_CMUpdater

It's intergrated into the Settings app:

<img src="screenshots/settings-updater.png?raw=true" width="300">

It checks [each device's config.xml](https://github.com/Katsuna/device_lge_hammerhead/commit/24b4182623d95477bde075bcf50213e2e941e06e), connects to the url provided there and tries to fetch the file specified in the .json (check [example_DEVICE-NAME.json](example_DEVICE-NAME.json)). If timestamp is newer than the last update and filename checks out, the download is started:

<img src="screenshots/new-update.png?raw=true" width="300">

After completion of the download, the md5 is checked, and if that matches too, the app provides a "successful download" notification:

<img src="screenshots/update-downloaded.png?raw=true" width="300">

Then you tap the notification and the phone should automatically reboot into TWRP (needed custom recovery), flash the update, and reboot back to Android.
