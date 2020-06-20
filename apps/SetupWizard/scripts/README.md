# KatsunaSetupWizard - Scripts

This script is used for automating the development process of the KatsunaSetupWizard. Due to private Android OS APIs, KatsunaSetupWizard is built **against the AOSP source**.
This means that there is no easy way to *"instant run"* it, like in Android Studio. This script helps with that.

It **assumes** a working AOSP building environment and it is supposed to be run from the **ROOT** of it, complimenting the building of the KatsunaSetupWizard.

It handles all the special resets you will need during the development (Android OS reset of "first boot" values and the required data clearing of the affected apps).

E.g.
```
cd into AOSP root
. build/envsetup.sh
lunch
mka KatsunaSetupWizard && ./ksw.sh
```
