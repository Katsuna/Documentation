## Katsuna Quick Settings

This document describes the basic layouts and classes used to modify original aosp quick settings to match katsuna designs.

---

### Source root directory:

	frameworks/base/packages/SystemUI


### Components

#### Minified quick settings
	
	Layout: 
		res/layout/katsuna_qs_mini.xml	
		
	Class:
		src/com/android/systemui/qs/QuickStatusBarHeader.java
		

#### Expanded quick settings
		
	Layouts:
		- res/layout/katsuna_quick_settings.xml
		- res/layout/katsuna_quick_settings_lh.xml
		- res/layout/katsuna_quick_settings_rh.xml
		
	Class:
		src/com/android/systemui/qs/QSFragment.java

### Layouts Hierarchy

- res/layout/super_status_bar.xml
	- res/layout/status_bar_expanded.xml
		- res/layout/qs_panel.xml
			- res/layout/quick_status_bar_expanded_header.xml
				- res/layout/katsuna_qs_mini.xml
			- res/layout/katsuna_quick_settings.xml
				- res/layout/katsuna_quick_settings_lh.xml
				- res/layout/katsuna_quick_settings_rh.xml		