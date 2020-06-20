# F.A.Q.

Common behaviors, questions and bugs of an Android ROM:

**Q**: The device is lagging.   
**A**: Check under Developer options --> Running services if all (or most) memory is occupied, and by which service/app. Report to the lead ROM/app developer

**Q**: The device is draining battery very fast.    
**A**: Document the battery drain using the Battery information screen in Settings or [BetterBatteryStats](https://play.google.com/store/apps/details?id=com.asksven.betterbatterystats&hl=en) (screenshot). Check if the Location setting is set to "GPS (High accuracy)" and turn it to "Battery Saving".

**Q**: The device is rebooting randomly. It doesn't vibrate and go through a cold boot, but instead skips instantly to the bootanimation loading screen and then Android boots, faster than a normal reboot.    
**A**: This is called a hot reboot, and most of the times it happens due to Android's SystemServer crashing. It's not normal. Report to the lead ROM/app developer.

**Q**: The device is rebooting randomly. It behaves exactly as a normal reboot (device's screen turns off and on, it vibrates, then it starts the boot sequence without weird behavior).    
**A**: This is a cold reboot. It could be a kernel panic reboot or something hardware related. Report to lead ROM/app developer.

**Q**: A constant stream of "SystemUI has crashed/force closed" (FC) is displayed. I keep pressing OK but it repeats.   
**A**: SystemUI is scheduled to be restarted if it is ever killed. If you manage to make it crash once, it will keep restarting itself. Only solution is to solve the reason it FCs (another app, a file, etc) using the adb shell.

**Q**: The device is in a constant state of loading bootanimation.    
**A**: This is called "a bootloop", and it's not normal. Restore the phone by performing a "clean flash" of the ROM.

**Q**: The device is overheating.   
**A**: Check if Location setting is set to "GPS (High accuracy)". Don't use third party chargers. Kill all open apps. Reboot the phone.

**Q**: The device can't connect to a Wifi / data network.   
**A**: Toggle Airplane mode.

**Q**: The device is displaying a message about using the wrong vendor image.   
**A**: (Re)flash the vendor image needed for your device & ROM version.
