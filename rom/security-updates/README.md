# Documentation - Merging Security Updates

## Information

Android OS for the Pixel/Nexus lineup gets regular monthly security updates/releases, which upgrade high-profile / security-risk bugs (CVEs) and may add new features.

Starting from Katsuna Oreo, the team's plan is to follow Google closely with those updates, and merge each one of them on top of our Katsuna source, as soon as it is available.

## Automatic merge

We currently support automatic merging of the latest security tag, using our [katsuna-monthly-merge](https://github.com/Katsuna/build_scripts/blob/master/build_server/katsuna-monthly-merge) script.

## Explaining the procedure (Manual merge)

### Find the proper manifest tag

Google releases stock images for the Pixel/Nexus lineup [here](https://developers.google.com/android/images). Right now, our main development device is the Google Nexus 5X (codename: bullhead), so we choose to track the manifest tag that corresponds to that device's specific version.

For example, for the month of January 2018, bullhead version was OPM3.171019.013, [which corresponds to android-8.1.0_r7](https://source.android.com/setup/build-numbers#source-code-tags-and-builds).

Generally, we don't want to use carrier-specific updates like OPM5.171019.014 (android-8.1.0_r9).

### Merge the update tag to all Katsuna forked repositories

The repo sync tool will update all AOSP-tracked repositories to the latest tag automatically, but we still need to merge the update tag ourselves to our Katsuna forked repositories (like Settings, base etc).

This is done using the following commands:
```
git fetch aosp
git merge android-X.X.X_rYY
git push
```

**NOTICE**: "aosp" is the name of the remote AOSP repository, for example, for the build repo:
```
~/android/oreo/dev/build/make
$ git remote -v
aosp    https://android.googlesource.com/platform/build/ (fetch)
aosp    https://android.googlesource.com/platform/build/ (push)
```
This only needs to be setup once per repo.

### Update the device fingeprints

Furthermore, the device fingerprints need to be updated [accordingly](https://github.com/Katsuna/vendor_katsuna/commit/828481dca87980294bfaa517e294f8f23694ee5f).

You can find these fingerprints in the build.prop of the stock image of each device.

### Update the device's non AOSP binaries ("blobs")

Lastly, the device blobs need to more extracted each time using scripts like anestisb' [android-prepare-vendor](https://github.com/anestisb/android-prepare-vendor) tool, and copied inside our vendor_XXX directories.
