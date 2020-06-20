# Documentation - KatsunaCommon library

## 1. Basic information

KatsunaCommon is our main Katsuna Android Library. As a Library, it contains common java methods and resources that are used in all of our Katsuna apps and will be used in the Katsuna ROM.

Both during the gradle (Android Studio) and AOSP (android makefiles) builds, the KatsunaCommon library is being built and included as a dependency inline.

Our Katsuna apps' **settings.gradle** files have been set accordingly, so the following structure in your working development environment is **required**:

```
X:/Development/
    | -- frameworks
    |       | -- KatsunaCommon
    | -- packages
    |       | -- apps
    |       |     | -- KatsunaCalls
    |       |     | -- KatsunaContacts
```


## 2. Details

### a. Common strings

We include string resources into KatsunaCommon, which can be used everywhere where KatsunaCommon is included (that means our apps and AOSP), in order to limit duplicate strings in different repositories/projects as much as possible.

To make the best of this configuration, developers wanting to add any new string resources will need to follow these steps:

* Check KatsunaCommon [strings.xml](https://github.com/Katsuna/frameworks_KatsunaCommon/blob/n-dev/commons/src/main/res/values/strings.xml) for the string.

  * ***If it already exists***, you can just use it as a usual resource *(granted that you have already included the KatsunaCommon library correctly)*.
[e.g.](https://github.com/Katsuna/packages_apps_KatsunaCalls/blob/n-dev/app/src/main/res/menu/activity_main_drawer.xml)
  ```
  <item
      android:id="@+id/drawer_settings"
      android:icon="@drawable/ic_settings_black_24dp"
      android:title="@string/common_settings" />
  ```
  * ***If it doesn't exist***, decide if the new string should be a "common" string, that means a string that will probably be used by other apps, too.

    * If it should be a "common" string, add it to the KatsunaCommon string resources, following the already established naming scheme of adding a prefix:
    ```
    "common_"
    ```
    * If it shouldn't be a "common" string but it's definitely specific to one app only, add it to the app's string resources.

**IN EVERY CASE**, make sure to comment it properly, [e.g.](https://github.com/Katsuna/frameworks_KatsunaCommon/blob/n-dev/commons/src/main/res/values/strings.xml):
```
<!-- Title of the color profile selection setting -->
<string name="common_profile_color">Color profile</string>
```

This helps our translators know the context of the string they translate.

#### Special cases:
For anything that can't easily follow the patterns set by the above guidelines, it is advised to ask the team leader or the translations manager in advance, before adding any new resources in the source code.
