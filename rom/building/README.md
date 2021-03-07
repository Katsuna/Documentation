# Documentation - Compiling AOSP

## Prerequisites

Before starting, you should study and become familiar with the official AOSP documentation: https://source.android.com/setup/

Also, the [buildaosp-info-2015-genymotion.pdf](buildaosp-info-2015-genymotion.pdf) contains a presentation about the subject.

## Compiling Katsuna

The Katsuna ROM source is a modified AOSP source. It is structured around a modified AOSP manifest of the latest "base" AOSP manifest version we want to use.

Our [manifest](https://github.com/Katsuna/public_manifest) downloads mostly unmodified AOSP repositories, and all the Katsuna repositories we have set up in our Github.

Once downloaded, we use "wrapper scripts" to setup the AOSP build environment, start the build, and upload to our updater servers.

## Procedure

### 1. On the server

Everything happens inside the [katsuna-build](https://github.com/Katsuna/build_scripts/blob/master/build_server/katsuna-build) script. *(This script, alongside the whole build_scripts repo is automatically downloaded and placed in the PATH of our build servers.)*

Every time it runs, the source is automatically synced with Github, and the build environment is set with the correct build parameters *(device, Android version, branch type (development or production) & many more)*.

Then, the build (compilation) is started.

The AOSP build environment uses makefiles called **Android.mk** and is responsible of building **everything** inside the Katsuna ROM, **except for** the Katsuna Apps.

The Katsuna Apps are normal Android Studio projects, and thus, contain their own gradle building setup, with a lot of third party dependencies and co-dependencies, so we use a [katsuna-build-gradle](https://github.com/Katsuna/build_scripts/blob/master/build_server/katsuna-build-gradle) script to build them, **completely separately** from the AOSP build.
After they are built, they are included inside the Katsuna image (otapackage) as [prebuilt apks](prebuilt-apks/README.md).

So, schematically, our Katsuna build system:
```
katsuna-build
    |
    | ----> katsuna-build-gradle (builds with Gradle daemons)
    |              | <---- Katsuna Apps source code
    |              | ----> new prebuilt apks inside vendor/kapps
    |
    | ----> make otapackage (builds with AOSP makefiles)
    |              | <---- Katsuna AOSP source code
    |              | <---- apks inside vendor/kapps
    |              | ----> new Katsuna otapackage.zip
    |               
    | ----> katsuna-deploy
    |              | <---- produced otapackage.zip
    |              | ----> otapackage.zip published on our servers
    X
```

### 2. Locally (during development)

Every developer should use the  [katsuna-build-local-init](https://github.com/Katsuna/build_scripts/blob/master/build_server/katsuna-build-local-init) script to download the source and setup the linux environment for the AOSP compilation.

Afterwards, the compilation can be started by using the [katsuna-build-local](https://github.com/Katsuna/build_scripts/blob/master/build_server/katsuna-build-local) script.

Carefully read the [README](https://github.com/Katsuna/build_scripts/blob/master/build_server/README.md) for instructions on how to run both of them.

The **ONLY** difference between compiling locally vs the server is the KApps compilation. Specifically, due to technical reasons, KApps won't be compiled *inline* using any kind of **katsuna-build-gradle** script. The compilation will skip the KApps compilation and will just bundle the latest KApps apks from the [vendor/kapps](https://github.com/Katsuna/public_vendor_kapps) repository.

This shouldn't hinder any development. If the developer wants to update the KApp apk, he should build from Android Studio and install the update on the device.


#### Notices

1. The [KatsunaCommon](https://github.com/Katsuna/public_frameworks_KatsunaCommon) library is being compiled both with the AOSP compilation system as a library, so that it can be used in AOSP apps like SystemUI and Settings, and is used as a library project of the Katsuna Apps.

2. The ROM is signed with **private keys which also are used to sign the Katsuna Apps**, so that special privileges are being given by default on our Apps, on our Katsuna ROM.
