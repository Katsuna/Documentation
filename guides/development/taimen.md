# Documentation - Pixel 2 XL

## Unlock/Root/Flash Guide for Development builds

### 0. Device important info

* **name**: Pixel 2 XL
* **board/device name**: taimen
* **arm architecture**: arm64

This is the internal document detailing all the information needed to flash the latest development build of the Katsuna OS. This is intended for the development team; it assumes a working adb/fastboot environment, usb drivers at your development machine and basic knowledge of linux architecture and command line methodology.

### 1. Files to download
You are going to need:
1. [TWRP Recovery 3.3.0-0][1]  
2. [TWRP Pixel2 Installer 3.3.0-0][7]  
3. [latest Katsuna OS dev build][2]  
4. [vendor-taimen-opm2.171026.006.h1.img][3]   
5. [Nano Open-GApps package][4] **for Android 8.1 & arm64**   
Optional:   
6. [bootloader-taimen-tmz12g.img][5]   
7. [radio-taimen-g8998-00202-1802061358.img][6]  

### 2. Flash
**Reminder**: If you haven't already, you need to [unlock the bootloader](#Unlock-Bootloader).

1. Power off your device, and re-start it by pressing **(power + volume down)**. This will boot it into the bootloader.

2. Flash firmware files through fastboot:
```
fastboot flash bootloader bootloader-taimen-tmz12g.img   
fastboot flash radio radio-taimen-g8998-00202-1802061358.img
fastboot flash vendor vendor-taimen-opm2.171026.006.h1.img
```
3. Boot into TWRP recovery using fastboot:
```
fastboot boot twrp-3.3.0-0-taimen.img
```

4. Flash the TWRP Pixel2 Installer, the ROM and the GApps files through TWRP:       
**ATTENTION**: This procedure will require multiple reboots into the recovery, read thoroughly!

* Use `adb push` to push the required files to the device's /sdcard.
* Perform a full wipe
  ```
  * Select the wipe option from the TWRP home screen.
  * Select advanced wipe.
  * Check the system, data and dalvik/art cache options.
  * Swipe to wipe.
  ```
* Install the Pixel2 TWRP Installer and the ROM
  ```
  * Select the install option from the TWRP home screen.
  * Select the ROM zip
  * Select "Add more zips".
  * Select the Pixel2 TWRP Installer
  * Swipe to install
  ```
5. **DO NOT REBOOT** by pressing "reboot system" after the installation is finished. Instead:        
    ```
    * Select the reboot option from the TWRP home screen.
    * Take a mental note of the "current slot"
    * Select recovery
    ```

6. After the device has rebooted into the recovery again, install the GApps zip:
    ```
    * Select the install option from the TWRP home screen.
    * Select the GApps zip
    * Swipe to install
    ```
7. Reboot by pressing "reboot system".


### Unlock-Bootloader

**ONE TIME ONLY**

1. You need to change 2 settings in Developer Settings in stock Android OS:
  > Go into Settings/About Phone, scroll down and click on “build number” continuously until you see a toast notification telling you that you've enabled Developer Options. Go back to your Settings menu and enter Developer Options, scroll down and click on the **Enable OEM Unlock** (or "Enable OEM Unlocking") checkbox, also make sure you enable **USB Debugging** while you're in the Developer Options menu.

2. Power off your device, and re-start it by pressing **(power + volume down)**. This will boot it into the bootloader.

**This will erase all user data from the device!**

3. `fastboot flashing unlock_critical`

4. `fastboot format userdata`

5. `fastboot reboot-bootloader`

### References
1. [XDA: Unlock/Root/Flash for Pixel 2 XL](https://forum.xda-developers.com/pixel-2-xl/how-to/guide-unlock-flash-root-pixel-2-xl-t3702418)
2. [Google Developers](https://developers.google.com/android/images)

[1]: https://dl.twrp.me/taimen/
[2]: http://hi.kitschuna.com/files/taimen/latest
[3]: http://hi.kitschuna.com/files/taimen/extras/vendor-taimen-opm2.171026.006.h1.img
[4]: http://opengapps.org/
[5]: http://hi.kitschuna.com/files/taimen/extras/bootloader-taimen-tmz12g.img
[6]: http://hi.kitschuna.com/files/taimen/extras/radio-taimen-g8998-00202-1802061358.img
[7]: https://dl.twrp.me/taimen/twrp-pixel2-installer-taimen-3.3.0-0.zip
