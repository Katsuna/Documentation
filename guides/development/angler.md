# Documentation - Nexus 6P

## Unlock/Root/Flash Guide for Development builds

### 0. Device important info

* **name**: Nexus 6P
* **board/device name**: angler
* **arm architecture**: arm64

This is the internal document detailing all the information needed to flash the latest development build of the Katsuna OS. This is intended for the development team; it assumes a working adb/fastboot environment, usb drivers at your development machine and basic knowledge of linux architecture and command line methodology.

### 1. Files to download
You are going to need:
1. [TWRP Recovery 3.3.0-0][1]  
2. [latest Katsuna OS dev build][2]  
3. [vendor-angler-opm7.181205.001.img][3]   
4. [Nano Open-GApps package][4] **for Android 8.1 & arm64**   
Optional:   
5. [bootloader-angler-angler-03.84.img][5]   
6. [radio-angler-angler-03.88.img][6]  

### 2. Flash
**Reminder**: If you haven't already, you need to [unlock the bootloader](#Unlock-Bootloader).

1. Power off your device, and re-start it by pressing **(power + volume down)**. This will boot it into the bootloader.

2. Flash firmware files through fastboot:
```
fastboot flash recovery twrp-3.3.0-0-angler.img
fastboot flash bootloader bootloader-angler-angler-03.84.img
fastboot flash radio radio-angler-angler-03.88.img
fastboot flash vendor vendor-angler-opm7.181205.001.img
```

3. Use the **volume** buttons to select *"Recovery mode"* and press the **power** button to boot into it.

4. Flash the ROM and GApps zip files through TWRP:

* Use `adb push` to push the required files to the device's /sdcard.
* Perform a full wipe
  ```
  * Select the wipe option from the TWRP home screen.
  * Select advanced wipe.
  * Check the system, data, cache, and dalvik cache options.
  * Swipe to wipe.
  ```
* Install the ROM and GApps
  ```
  * Select the install option from the TWRP home screen.
  * Select the ROM zip
  * Select "Add more zips".
  * Select the GApps zip
  * Swipe to install
  ```
5. Reboot


### Unlock-Bootloader

**ONE TIME ONLY**

1. You need to change 2 settings in Developer Settings in stock Android OS:
  > Go into Settings/About Phone, scroll down and click on “build number” continuously until you see a toast notification telling you that you've enabled Developer Options. Go back to your Settings menu and enter Developer Options, scroll down and click on the **Enable OEM Unlock** (or "Enable OEM Unlocking") checkbox, also make sure you enable **USB Debugging** while you're in the Developer Options menu.

2. Power off your device, and re-start it by pressing **(power + volume down)**. This will boot it into the bootloader.

**This will erase all user data from the device!**

3. `fastboot flashing unlock`

4. `fastboot format userdata`

5. `fastboot reboot-bootloader`

### References
1. [XDA: Unlock/Root/Flash for Nexus 6P](http://forum.xda-developers.com/nexus-6p/general/guides-how-to-guides-beginners-t3206928)
2. [Google Developers](https://developers.google.com/android/nexus/images)

[1]: https://dl.twrp.me/angler/
[2]: http://hi.kitschuna.com/files/angler/latest
[3]: http://hi.kitschuna.com/files/angler/extras/vendor-angler-opm7.181205.001.img
[4]: http://opengapps.org/
[5]: http://hi.kitschuna.com/files/angler/extras/bootloader-angler-angler-03.84.img
[6]: http://hi.kitschuna.com/files/angler/extras/radio-angler-angler-03.88.img
