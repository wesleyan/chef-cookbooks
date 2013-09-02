# CHANGELOG for microsoft_office

This file is used to list changes made in each version of microsoft_office.

## 0.4.0:

* Installs Office 2010 on Windows now.
* Updated Office 2011 Mac to 14.3.6.
* Brought metadata/README up to latest standard.

## 0.3.1:

* Updated composer package to 14.3.2.

## 0.3.0:

* Rebuilt package using Composer.
* Current version 14.3.1.

## 0.2.1:

* Added code to modify permissions to fix the crappy package I made that makes the Office directory unreadable.

## 0.2.0:

* Current app version: 14.2.5.
* Rebuilt package from the ground up and slipstreamed latest version.  This was necessary for activation, subsequent updates can be installed as normal. 
* Now copies required plist files to default user directory to suppress first launch nags.

## 0.1.0:

* Initial release of office cookbook.
* Current app version: 14.2.4
* Adds app to dock.
* Need to fix hdiutil unmounting during 14.2.3/14.2.4 updates.