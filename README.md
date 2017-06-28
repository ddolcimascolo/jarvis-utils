<!---
IMPORTANT
=========
This README.md is displayed in the WebStore as well as within Jarvis app
Please do not change the structure of this file
Fill-in Description, Usage & Author sections
Make sure to rename the [en] folder into the language code your plugin is written in (ex: fr, es, de, it...)
For multi-language plugin:
- clone the language directory and translate commands/functions.sh
- optionally write the Description / Usage sections in several languages
-->
## Description

A collection of useful utility functions for other Jarvis plugins.

## Configuration

The following variables are required by the plugin:

```
jv_pg_utils_browserLockFile=/tmp/jv_pg_utils_browser
  
A temporary file storing the PID of an opened browser.
```

## Usage

No commands are provided by this plugin.
  
The plugin provides the following functions:

```
jv_pg_utils_openKioskBrowser "<url>" "<message said by Jarvis while opening the browser>"
  
Opens a chromium-browser instance in kiosk mode (no window decorations, no menu, fullscreen) on the given URL and optionally say something.
```
```
jv_pg_utils_closeBrowser "<message said by Jarvis if there is no browser running>"
  
Closes a running chromium-browser instance or optionally say something if no instance is running.
```

## Author

[Linagora](https://linagora.com)
