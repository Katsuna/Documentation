# Documentation - GApps

## Google Apps (GApps)
The only way to include Google Play Store into the ROM right now is to use third-party unofficial GApps packages, produced by the custom ROM community. [Open-GApps](http://opengapps.org/) is one of the major ones.

### Which package?
[Nano Open-Gapps package](http://opengapps.org/) **for arm64** are recommended for our development builds, because of their small size and limited gapps installation.

[Stock Open-Gapps package](http://opengapps.org/) **for arm64**, **MODIFIED** with this .gapps-config (gapps-config.txt for Windows) can be used in the case where we want to remove AOSP apps and include some GApps, automatically.

```
# Disable Debug
NoDebug

#Exclude
Books
CalculatorGoogle
ClockGoogle
Docs
Drive
Earth
Fitness
Gmail
GoogleNow
GooglePlus
Hangouts
Keep
Maps
Messenger
Movies
Music
NewsStand
NewsWidget
PackageInstallerGoogle
PixelIcons
PlayGames
Sheets
Slides
Street
Translate
VRService
Wallpapers
WebViewGoogle
YouTube

#Remove Stock Apps
MMS
```

**BOTH** the Open-GApps .zip package **AND** the .gapps-config/gapps-config.txt must be placed under the same directory "Open-GApps" in /sdcard:

```
$ ls -al /sdcard/Open-Gapps
.gapps-config
open_gapps-arm64-7.0-nano-20161110.zip
```
