plexconnect cookbook CHANGELOG
==============================

This file is used to list changes made in each version of the plexconnect cookbook.

2.1.4
-----
* Adds the iptables cookbook to the dependencies

2.1.3
-----
* Allows DNS server to be disabled
* Makes plexmediaserver requirement optional in init file

2.1.2
-----
* Moves user and group to default attributes

2.1.1
-----
* Fixes not_if condition for rc.d block in init recipe

2.1.0
-----
* Updates ATVSettings and installation version to v0.5
* Adds fanart recipe which installs Pillow

2.0.0
-----
* Separates system and Apple TV settings
* Adds some more options to atv_settings

1.0.0
-----
* Initial release of the plexconnect cookbook
