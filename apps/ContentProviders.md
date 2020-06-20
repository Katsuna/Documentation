# Katsuna Content Providers


All content providers are currently hosted at KatsunaServices application: [packages/apps/KatsunaServices](https://github.com/Katsuna/packages_apps_KatsunaServices)


## PreferenceProvider

This content provider is used to store user preferences.

```
	name = com.katsuna.services.datastore.providers.PreferenceProvider
	permission = com.katsuna.services.datastore.permission.preferences
	permission-protectionLevel = signatureOrSystem
	class = com/katsuna/services/datastore/providers/PreferenceProvider.java
	operations implemented = Read, Update.

	database:
		name = katsuna.db
		helper = com/katsuna/services/datastore/db/DatabaseHelper.java
		creation script = KatsunaServices/app/src/main/assets/create_katsuna_db.sql
		table-name:	preference

			columns:
			    _id  INTEGER PRIMARY KEY AUTOINCREMENT,
			    key TEXT NOT NULL,				// key of the preference
			    value TEXT NOT NULL,			// current value of the preference
			    descr TEXT					// description of value (currently used for gender - other free text)

			sample row values:
				_id:	5
				key:	GENDER
				value:	OTHER
				descr:	GENDER DESCRIPTION
```

## LauncherProvider

This content provider is used to capture application launches from KatsunaLauncher workspace.

```
	name = com.katsuna.services.datastore.providers.LauncherProvider
	permission = com.katsuna.services.datastore.permission.launcher_accesses
	permission-protectionLevel = signatureOrSystem
	class = com/katsuna/services/datastore/providers/LauncherProvider.java
	operations implemented = Read, Create.

	database:
		name = katsuna.db
		helper = com/katsuna/services/datastore/db/DatabaseHelper.java
		creation script = KatsunaServices/app/src/main/assets/create_katsuna_db.sql
		table-name:	launcher_access

			columns:
				_id  INTEGER PRIMARY KEY AUTOINCREMENT,
				component TEXT NOT NULL,		// component name
				user TEXT NOT NULL,			// intent info related to application launch (includes user profile id). This column is used to group by and count app launches.
				time TEXT NOT NULL			// time of the event

      sample row values:
				_id:				2
				component:			com.katsuna.calls/.ui.activities.MainActivity
				user:				 #Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.katsuna.calls/.ui.activities.MainActivity;l.profile=0;end
				time:				2017-05-25T17:47:00.210+03:00
```
