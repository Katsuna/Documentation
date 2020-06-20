Root directory:	packages/apps/Settings/src/com/android/settings


Key components related to katsuna os.

	Activities
		Settings.java - Top-level Settings activity
		SettingsActivity.java - Main Settings Activity that hosts the varius settings fragments.

	Fragments
		dashboard/KatsunaSettings.java 		- Katsuna fragment to display Katsuna top level settings.
		AdvancedSettings.java 			- This fragment contains aosp original settings.
		wifi/WifiSettingsForSetupWizard.java 	- This fragment is used from SetupWizard.

	Custom Views
		The following custom views are used by KatsunaSettings fragment.
		katsuna/settings/BaseSetting.java
		katsuna/settings/BrightnessSetting.java
		katsuna/settings/SoundSetting.java
		katsuna/settings/ConnectivitySetting.java
		katsuna/settings/LocationSetting.java
		katsuna/settings/NotificationSetting.java
		katsuna/settings/UpdateSetting.java
		katsuna/settings/MoreSetting.java
		katsuna/settings/AgeSetting.java
		katsuna/settings/GenderSetting.java
		katsuna/settings/HandSetting.java
		katsuna/settings/SizeSetting.java
		katsuna/settings/ColorSetting.java

	Layouts
		res/layout/katsuna_panel.xml		- Layout used by KatsunaSettings fragment.
		res/xml/advanced_settings.xml		- Layout used by AdvancedSettings fragment.
		res/layout/setup_wifi_layout.xml	- Layout used by WifiSettingsForSetupWizard fragment.
		res/layout/brightness_setting.xml	- Layout used by BrightnessSetting View.
		res/layout/sound_setting.xml		- Layout used by SoundSetting View.
		res/layout/connectivity_setting.xml	- Layout used by ConnectivitySetting View.
		res/layout/location_setting.xml		- Layout used by LocationSetting View.
		res/layout/notification_setting.xml	- Layout used by NotificationSetting View.
		res/layout/update_setting.xml		- Layout used by UpdateSetting View.
		res/layout/more_setting.xml		- Layout used by MoreSetting View.
		res/layout/age_setting.xml		- Layout used by AgeSetting View.
		res/layout/gender_settings.xml		- Layout used by GenderSetting View.
		res/layout/hand_setting.xml		- Layout used by HandSetting View.
		res/layout/size_setting.xml		- Layout used by SizeSetting View.
		res/layout/color_setting.xml		- Layout used by ColorSetting View.
