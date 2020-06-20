#!/bin/bash
#
#     Copyright (C) 2018 The Katsuna Project
#     Copyright (C) 2017 akaf47
#     Copyright (C) 2018 KreAch3R
#
#     Licensed under the Apache License, Version 2.0 (the "License");
#     you may not use this file except in compliance with the License.
#     You may obtain a copy of the License at
#
#          http://www.apache.org/licenses/LICENSE-2.0
#
#     Unless required by applicable law or agreed to in writing, software
#     distributed under the License is distributed on an "AS IS" BASIS,
#     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#     See the License for the specific language governing permissions and
#     limitations under the License.

adbexec=adb

$adbexec root
$adbexec remount
$adbexec push out/target/product/bullhead/system/priv-app/KatsunaSetupWizard/KatsunaSetupWizard.apk /system/priv-app/KatsunaSetupWizard/KatsunaSetupWizard.apk
$adbexec shell settings put secure user_setup_complete 0
$adbexec shell settings put global device_provisioned 0
$adbexec shell pm clear com.katsuna.setupwizard
$adbexec shell pm clear com.google.android.gms
$adbexec shell pm clear com.katsuna.widgets
$adbexec shell pm clear com.katsuna.infoservices
$adbexec shell pm enable com.katsuna.setupwizard/.ui.SetupWizardActivity
$adbexec shell am start -n com.katsuna.setupwizard/.ui.SetupWizardActivity
