Cloud plugin v2.0 for Total Commander

This is the Cloud file system plugin for Total Commander
It allows to access the following clouds:
- Box
- Dropbox
- Google Drive
- Windows Live OneDrive
- Yandex Drive
- OneDrive for Business
- Microsoft Azure Data Lake Store

It is possible to create multiple accounts on all the
services except for Yandex Drive.

Problems on Windows XP:
=======================
1. Dropbox: Login only works with external browser
2. Google drive: Login only works with Internet Explorer
   based browser
3. OneDrive and Box cannot be accessed at all (due to
   strong encryption not supported by Windows functions)

WARNING:
========
This plugin uses the Internet Explorer control to log
into the cloud services. Unfortunately the services
use cookies to save the login. Therefore it is NOT
recommended to use this plugin on other people's
computers, e.g. when running TC from USB stick.

=========================================================
Automatic Installation
======================
Just double click on the plugin ZIP file within Total
Commander and follow the instructions.

Manual Installation
===================
1) Create subdirectory "Cloud" somewhere on your harddisk
2) Extract all the files from this archive to the Cloud directory
3) Select Configuration -> Options -> Operation
4) Click on FS-plugins and add cloudplugin.wfx

You can now use the plugin via Network Neighborhood:

1. Choose Network from the dropdown list of drives
2. Open "Cloud" subfolder
3. Press F7 (Mkdir) and set a name for the connection
4. Select the cloud provider from the dropdown list
5. Choose Proxy or Internet explorer
6. Check "Save login data" if you want to remember the credentials.
   Requires to set a master password to encrypt the credentials.
7. Enter email address used for this account
8. Login to your account when the Internet Explorer popup appears
9. Authorize Total Commander to access the data

=========================================================
History
=======
20181102 Public release version final
20181030 Public release version 2.0 beta 5
20181030 Fixed: Uploads of files >50MB to dropbox (using multi-part uploads) didn't set timestamp of uploaded file
20181030 Fixed: Uploads to OneDrive for business failing for some services with large bearer token
20181029 Public release version 2.0 beta 4
20181029 Added: Use larger buffers (4kBytes) also for bearer token - some OneDrive services use 2.6kBytes!
20181025 Public release version 2.0 beta 3
20181025 Added: Use larger buffers for tokens; show OAUTH token request and reply bodies in detailed log
20181023 Added: Show used SSL/TLS version and encrpytion method (when using detailed log)
20180329 Public release version 2.0 beta 2
20180329 Added: Access shared files/folders in OneDrive plugin: Through folder *shared*, and folders inside own OneDrive if they were added there 
20180305 Public release version 2.0 beta 1
20180305 Added: Option to use external Web browser to log onto a cloud service
20180202 Public release version 1.11 final
20180202 Fixed: Trying to move a folder from a Dropbox account to any other cloud (which doesn't work) would delete the folder. If this happened to you, login to www.dropbox.com and go to "Files" -> "Deleted files" to get them back
20171129 Public release version 1.10 final
20171129 Fixed: Oauthbrowser: Loading of page didn't work on Windows XP when Internet Explorer wasn't the default browser
20171010 Public release version 1.10 beta 11
20171010 Fixed: Oauthbrowser: crash when clicking on a link which would open a popup (e.g. link to terms&conditions)
20171010 Fixed: Oauthbrowser no longer working with Google drive - because of user agent reporting IE version 11 (bug in Google drive!)
20170919 Public release version 1.10 beta 10
20170919 Fixed: OneDrive: Directories only showed up to 200 files, because Microsoft was returning a continuation URL longer than 1023 characters
20170916 Public release version 1.10 beta 9
20170916 Fixed: Oauthbrowser: Not all hotkeys worked, e.g. Ctrl+C/Ctrl+X/Ctrl+V
20170916 Fixed: OneDrive for Business: Oauthbrowser crash with certain company-specific login pages
20170916 Fixed: OneDrive for Business didn't return more than 200 entries per directory - the link to the next chunk (@odata.nextLink) was an invalid URL -> only use the part after the '?'
20170911 Public release version 1.10 beta 8
20170911 Fixed: The plugin asked for the master password although storing the credentials was disabled in the connection settings
20170908 Public release version 1.10 beta 7
20170908 Fixed: OneDrive for Business: Request scope "offline_access" to get a refresh token (valid for 14 days, not just 1 hour as normal token)
20170903 Public release version 1.10 beta 6
20170903 Fixed: Handle OAUTH tokens longer than 1023 characters used by Microsoft Azure Datalake Store
20170804 Public release version 1.10 beta 5
20170803 Fixed: OneDrive for Business: Couldn't copy/move files from any folder to the root of the cloud drive
20170802 Public release version 1.10 beta 4
20170802 Fixed: Couldn't create subdirs in root of OneDrive for Business
20170802 Public release version 1.10 beta 3
20170802 Fixed: OneDrive for Business wasn't correctly detected
20170801 Public release version 1.10 beta 2
20170801 Fixed: Microsoft Azure Data Lake Store: Let the user also set the tenant id: on portal.azure.com, click on "Azure active directory" icon, then on "Properties". The value is in "Directory ID".
20170801 Public release version 1.10 beta 1
20170801 Fixed: Google Drive: Prevent the creation of a directory with the same name as an existing directory, although Google Drive would support it
20170731 Added: Support Microsoft Azure Data Lake Store. Create via portal.azure.com - New - Storage - Data Lake Store
20170731 Added: Support multi-part uploads to Dropbox for files >50MB
20170730 Added: Support OneDrive for Business via Microsoft Graph API
20170518 Public release version 1.09 final
20170514 Added: Support new Dropbox v2 API, the old will be disabled in June
20160527 Added: Set file timestamp after upload
20160527 Added: Support for multi-part uploads to allow files >100MB. Sends large files in 50MB chunks
20160527 Added: Switched from old "live api" to new "onedrive api"
20160526 Public release version 1.08 final
20160526 Added: Suppress script errors when logging in to Windows Live/OneDrive
20160525 Added: OneDrive: Use client_updated_time instead of updated_time for displayed timestamps
20151026 Public release version 1.07 final
20151025 Added: Google Drive: Configuration dialog to let the user choose the type of Google Docs downloads (e.g. OpenOffice, MS Office, HTML...)
20151025 Added: Google Drive: Download Google Docs documents, for now only as MS Office files
20151025 Added: Google Drive: Access files shared by other users
20150830 Public release version 1.06 final
20150830 Fixed: Google Drive: Problems with renaming/remote copying files, the timestamp was lost
20150811 Public release version 1.05 with Chromium
20150811 Added: Standalone version using Chromium instead of Internet Explorer control, also works on Windows XP
20150607 Public release version 1.05 final
20150607 Fixed: Yandex: No accents or cyrillic except for uploads and downloads
20150607 Fixed: OneDrive: Problems renaming file when name contained spaces or accented characters
20150601 Public release version 1.04 final
20150531 Fixed: Google Drive, rename/remote copy: Fail if target name already exists to avoid 2 files with same name
20150531 Fixed: Verify that a directory is empty before calling remove directory, because most clouds would delete all the content too!
20150529 Added: Copy and move files between folders directly on the server (not between accounts)
20150521 Public release version 1.03 final
20150521 Fixed: Upload to Microsoft OneDrive: Overwriting files on the server didn't work
20150413 Public release version 1.02 final
20150413 Fixed: File timestamp wrong after upload to Google Drive due to bug in its time parser. Milliseconds were interpreted as time zone offset
20150330 Public release version 1.01 final
20150330 Added: Properties of a file (Alt+Enter): Copy value under cursor, all URLs or everything to clipboard
20150301 Public release version 1.0 final
20150301 Fixed: Login to Yandex not working on XP -> use different OAUTH login method
20150216 Public release version 0.3 beta
20150215 Fixed: Could not see file sizes > 2GB
20141216 Public release version 0.2 beta
20141216 Fixed: Dropbox: Could not login on XP unless logged in on newer Windows first (problem with app auth)
20141216 Fixed: OneDrive: Could not rename file twice (file id was not updated)
20141211 Initial public release version 0.1 beta
=========================================================
Used components
===============

This Cloud plugin is using the following sources:
- vjson library for parsing json responses
  from https://code.google.com/p/vjson/
  Distributed under the MIT license.
  Copyright (c) 2010, Ivan Vashchaev 
- WinInet libary: Requires an installed Internet
  Explorer 8 or newer
- CVTUTF.C and CVTUTF.H: Used to convert to/from UTF-8.
  Copyright 1994-1999 IBM Corp.. All rights reserved.
  See below.
- My own code: See below (currently no source available)

Author: Christian Ghisler, www.ghisler.com

======================================================================
Legal documents:
======================================================================
CVTUTF.C and CVTUTF.H:
/*
File:	ConvertUTF.h, ConvertUTF.C
Author: Mark E. Davis
 * Copyright 1994-1999 IBM Corp.. All rights reserved.
 * 
 * IBM Corp. grants the user a nonexclusive right and license to use, execute,
 * display, modify, and prepare and/or have prepared derivative works of the
 * code, including but not limited to creating software products which
 * incorporate the code or derivative works thereof.
 * 
 * IBM Corp. grants the user a right and license to reproduce and distribute
 * the code as long as this entire copyright notice is reproduced in the code
 * or reproduction.
 * 
 * The code is provided AS-IS, and IBM Corp. disclaims all warranties,
 * either express or implied, including, but not limited to implied
 * warranties of merchantability and fitness for a particular purpose.
 * In no event will IBM Corp. be liable for any damages whatsoever (including,
 * without limitation, damages for loss of business profits, business
 * interruption, loss of business information, or other pecuniary
 * loss) arising out of the use or inability to use this code, even
 * if IBM Corp. has been advised of the possibility of such damages.
 * Because some states do not allow the exclusion or limitation of
 * liability for consequential or incidental damages, the above
 * limitation may not apply to you.
*/
======================================================================
My own code:
The cloud plugin is copyrighted freeware. It may be used freely
for commercial and non-commercial purposes. You may not charge
for this software, except with our written permission (via e-mail).
support@ghisler.com
