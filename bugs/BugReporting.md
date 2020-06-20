# Bugreport

The first step towards efficient bug solving is an efficient bugreport. Below lie some guidelines that should be followed every time one wants to submit a bug for the Katsuna ROM or apps.

These are two example bugreports, the format of which will be analyzed below:

* [Launcher3 UI glitch #1](https://github.com/Katsuna/packages_apps_Launcher3/issues/1)
* [Quick Settings don't work on first boot with GApps #1](https://github.com/Katsuna/frameworks_base/issues/1)

As you have understood by now, we will use [GitHub Issues](https://guides.github.com/features/issues/) to submit bugreports internally.

## 1. System Information
Always include:
* Device: **BOARDNAME**
* ROM version: **FILENAME.zip**
* ROM branch: **development/release**
* Clean flash: **YES/NO**
* GApps: **YES/NO**
* GApps version: **FILENAME.zip**

## 2. Short description
Provide a small description of the actual buggy behavior. Describe what exactly you are experiencing and you think it's a bug/problematic behavior.

## 3. Steps to Reproduce
This is a very important step. If a bug is not reproducable or the developer doesn't know how to reproduce it, there are so little things he/she can do.

* Be as elaborate as needed.
* The bug should happen (almost) every time.

### 4. LOGCAT
[What is a Logcat?](https://developer.android.com/studio/command-line/logcat.html)

Logcat is one of the most powerful tools. Read the documentation on how to use it, but basically it comes down to:
```
adb logcat > FILENAME.txt
```
*(device is already connected to PC and adb command is working)*

You are now recording the logcat. Let it run, and then try to reproduce the bug using your **"Steps to reproduce"**.

Afterwards, just drag 'n' drop the logcat file(s) into the message window.

### 5. Record a video
Some bugs can't be described with a 1000 words.
* Download [AZ Recorder (free)](https://play.google.com/store/apps/details?id=com.hecorat.screenrecorder.free&hl=en)
* Disable microphone recording (unless it's needed or you actually want to record it)
* Record your **"Steps to reproduce"** in a video.
* Upload the video to YouTube as **unlisted** and share the link in the issue message. You are going to need the [YouTube app](https://play.google.com/store/apps/details?id=com.google.android.youtube&hl=en) for that.

### 6. Extra information or your thoughts
You may not know exactly what's happening, or why the bug is presented but you may have extra thoughts about it or a behavior that you are not so sure that you can reproduce it. Add it here.

### 6. Label and Assignment
* Add the **bug** label to your issue
* Add Assignee(s) to the issue (if you know who should be)
