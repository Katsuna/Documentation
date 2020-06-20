# Documentation - ROM

Katsuna ROM is an AOSP based custom ROM project, bundled with Katsuna Apps and SystemUI / AOSP apps' customizations which accompany the project's scope.

## About the ROM

1. AOSP nougat/oreo base (branch: nougat-release | branch: latest oreo security update)
2. Unrooted (can be rooted using [Magisk](https://forum.xda-developers.com/apps/magisk))
3. Requires third-party GApps (as all AOSP ROMs). [Open-GApps are recommended](http://opengapps.org/).
4. Katsuna Settings
5. Katsuna Quick Settings
6. Contains Katsuna's Apps (KApps):
    * KatsunaCalendar
    * KatsunaCalls
    * KatsunaCamera
    * KatsunaClock
    * KatsunaContacts
    * KatsunaKeyboard
    * KatsunaLauncher
    * KatsunaMessages
7. Minimal AOSP related fixes
8. Crowdin powered string translations

## Contents

* [aosp-apps](aosp-apps): SystemUI, Settings modifications
* [building](building): the AOSP & Katsuna build system, how to build the source locally
* [gapps](gapps): flashing and/or bundling Open-Gapps
* [keys](keys): how the ROM/app signing works
* [security-updates](security-updates): how the AOSP Security updates are merged
* [translation](translation): how our crowdin system works


## Getting Started

In order to be able to develop for our Katsuna ROM, your development machine should be setup accordingly. Do not skip any step unless you know what you are doing.

1. [Install our build_scripts repository on your machine](https://github.com/Katsuna/build_scripts/blob/master/README.md#2-server-side-remote)
2. [Read about how our Katsuna Build system works](https://github.com/Katsuna/Documentation/tree/master/rom/building)
3. [Download the source locally](https://github.com/Katsuna/Documentation/tree/master/rom/building#2-locally-during-development), using our [special katsuna-build-local-init script](https://github.com/Katsuna/build_scripts/tree/master/build_server#katsuna-build-local-init)
4. [Learn how to setup Android Studio for AOSP development](https://github.com/Katsuna/Documentation/blob/master/rom/aosp-apps/README.md)
5. Develop on the ROM or the AOSP packages using our [special katsuna-build-local script](https://github.com/Katsuna/build_scripts/tree/master/build_server#katsuna-build-local)
