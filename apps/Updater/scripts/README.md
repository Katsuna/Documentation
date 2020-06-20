# KatsunaUpdater - Scripts

This script is used for automating the development process of the KatsunaUpdater. Due to private Android OS APIs, KatsunaUpdater is built **against the AOSP source**.
This means that there is no easy way to *"instant run"* it, like in Android Studio. This script helps with that.

It **assumes** a working AOSP building environment and it is supposed to be run from the **ROOT** of it, complimenting the building of the KatsunaUpdater.

E.g.
```
cd into AOSP root
. build/envsetup.sh
lunch
mka KatsunaUpdater && ./kup.sh
```
