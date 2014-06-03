microsoft_office CHANGELOG
==========================

This file is used to list changes made in each version of the microsoft_office cookbook.

0.6.2
-----
- [rchristensen] - Updated Office 2011 to 14.4.2

0.6.1
-----
- [rchristensen] - Updated Office 2011 to 14.3.9

0.6.0
-----
- [rchristensen] - Updated Office 2011 to 14.3.8
- [rchristensen] - Brought METADATA up to code.
- [mdietz] - Rewrote Windows recipe, now installs pre-activated Office 2013.

0.5.0
-----
- [mdietz] - Updated Office 2011 to 14.3.7
- [rchristensen] - Brought CHANGELOG up to code.
- [mdietz] - Added the following dependancies: dmg, default_profile, dock.

0.4.0
-----
- [mdietz] - Installs Office 2010 on Windows now.
- [rchristensen] - Updated Office 2011 Mac to 14.3.6.
- [rchristensen] - Brought metadata/README up to latest standard.

0.3.1
-----
- [rchristensen] - Updated composer package to 14.3.2.

0.3.0
-----
- [rchristensen] - Rebuilt package using Composer.
- [rchristensen] - Current version 14.3.1.

0.2.1
-----
- [rchristensen] - Added code to modify permissions to fix the crappy package I made that makes the Office directory unreadable.

0.2.0
-----
- [rchristensen] - Current app version: 14.2.5.
- [rchristensen] - Rebuilt package from the ground up and slipstreamed latest version.  This was necessary for activation, subsequent updates can be installed as normal. 
- [rchristensen] - Now copies required plist files to default user directory to suppress first launch nags.

0.1.0
-----
- [rchristensen] - Initial release of office cookbook.
- [rchristensen] - Current app version: 14.2.4
- [rchristensen] - Adds app to dock.
- [rchristensen] - Need to fix hdiutil unmounting during 14.2.3/14.2.4 updates.