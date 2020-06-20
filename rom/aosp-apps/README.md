# Documentation - How to develop AOSP Apps in Android Studio

## Prepare project files

1. [Download the ROM source locally](https://github.com/Katsuna/Documentation/tree/master/rom/building#2-locally-during-development)
2. Change into your **/DIRECTORY-OF-CHOICE**/

3. Type into terminal
```
mmm development/tools/idegen &&  development/tools/idegen/idegen.sh
```

## Add the project into Android Studio

4. Using Android Studio, open `android.ipr` (from root). Patiently wait because first time indexing needs some time to finish.

5. Remove source directories not needed for development from `android.iml` (from root).
6. Go to project structure -> modules
    * exclude directories not needed
    * remove all library dependencies and keep **current android sdk** only.

# References
http://ronubo.blogspot.gr/2016/01/debugging-aosp-platform-code-with.html
