Root directory:	packages/apps/KatsunaLauncher/src/com/katsuna/launcher/


Components

	Activities
		Launcher.java  - Primary activity used to display app drawer.
			showAppsView

	Adapters
		allapps/AllAppsGridAdapter.java  -  Adapter used to display app drawer.

	ViewHolders	
		katsuna/viewholders/AppViewHolder.java			- Default App ViewHolder.
		katsuna/viewholders/AppSelectedViewHolder.java		- Selected App ViewHolder.
		katsuna/viewholders/AppGreyedViewHolder.java		- Greyed App ViewHolder.

	Views
		allapps/AllAppsContainerView.java	- The all apps view container.
		BubbleTextView.java			- Used to display app info.

	Layouts	
		res/layout-port/launcher.xml	- Top container layout
		res/layout/all_apps.xml		- All apps container view.
		res/layout/app.xml		- Default App view.
		res/layout/app_selected.xml	- Selected App view.
		res/layout/app_info.xml		- Common app view layout.

	Key classes
		AppInfo.java				- Represents an app in AllAppsView.
		allapps/AlphabeticalAppsList.java	- The alphabetically sorted list of applications.
