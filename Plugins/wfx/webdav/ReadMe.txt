WebDAV plugin v3.0 final for Total Commander

This is the WebDAV file system plugin for Total Commander
It works with Microsoft IIS, Apache with mod_dav extension,
and Tamino WebDAV server. Other WebDAV servers may or may
not work. Bug reports and code changes are welcome.

=========================================================
Installation
============
1) Create subdirectory "WebDAV" somewhere on your harddisk
2) Extract the file davplug.wfx to the above directory
3) Select Configuration -> Options -> Operation
4) Click on FS-plugins and add davplug.wfx

You can now use the plugin via Network Neighborhood

=========================================================
History
=======
20190527 Release version 3.0 final
20190527 Fixed: F7 new folder: Append slash to URL if that option is checked in the connection settings
20170728 Release version 3.0 beta 1
20170728 Fixed: Rename: By default, pass full URL via Destination: field, otherwise some servers fail to rename
20161216 Release version 2.9 final
20161216 Fixed: Crash in expat xml library when directory listing starts with byte order marker (BOM)
20150921 Fixed: Detect UTF-8 encoding even if it is returned in single quotes encoding='UTF-8'
20150611 Release version 2.8 final
20150605 Fixed: Access violation when server returns empty entries (no "prop" properties), e.g. because access was denied
20150528 Release version 2.7 final (unmodified)
20150511 Release version 2.7 beta 1
20150511 Fixed: Barracudadrive failed to rename files when only the path relative to the server root was given
20150327 Release version 2.6 final
20150219 Release version 2.6 beta 8
20150219 Fixed: Method to handle NAS with invalid path changed, substract base path entered in server configuration
20150215 Added: If the user specifies a trailing slash in the settings, TC always sends one in directory listing calls (PROPFIND)
20150215 Fixed: Some servers didn't like directory listing URLs without trailing slash -> follow redirects
20150215 Release version 2.6 beta 7
20150215 Added: Support NAS returning invalid WebDAV directory, e.g. URL=https://servername/webdav, returns /subdir instead of /webdav/subdir
20150120 Release version 2.6 beta 6
20150120 Added: Also scan mirrored QR-Codes (some Webcams support mirrored mode)
20150120 Fixed: QR-Code was requested again by mistake after uploading a file to the server
20141201 Release version 2.6 beta 5
20141128 Added: Downloads and Uploads can now be moved to the background, allowing multiple concurrent transfers
20140917 Release version 2.6 beta 4
20140917 Fixed: Connect to access point not working if the connection had been defined previously
20140917 Fixed: Problems with servers returning slash after file name (for files, not just directories)
20140821 Release version 2.6 beta 3
20140820 Added: Also connect to access point created by WiFi plugin for Android (requires Windows XP SP3 or newer)
20140820 Added: Read QR-Code from Total Commander for Android (WiFi plugin) with webcam
20140316 Release version 2.6 beta 2
20140316 Fixed: When renaming a file and passing relative path in "Destination: " fails, try again with absolute path (for non-RFC-compliant servers)
20140316 Fixed: Quick connect no longer working
20140316 Added: Don't send MIME type if the file mime.types is missing <- delete this file if you cannot upload
20140225 Release version 2.6 beta 1
20140225 Changed: When renaming a file, pass the new name relative to the server, e.g. /subdir/newfilename.ext
20131118 Release version 2.5 final
20131118 Added: Support server which appends slash to file names (!)
20131004 Release version 2.4 final
20130717 Release version 2.4 beta 2
20130717 Fixed: Mime type checks were case-sensitive by mistake, so .TXT was not recognized as text/plain
20130716 Release version 2.4 beta 1
20130716 Added: Use mime type map from Apache project for uploads (mime.types)
20120514 Release version 2.3 final (unchanged)
20120111 Release version 2.3 beta 2
20120111 Fixed: 32-bit Unicode version was built incorrectly
20120108 Release version 2.3 beta 1
20120108 Added: Report plugin and host program version in HTTP client header
20110916 Release version 2.2 final
20110523 Added: 64-bit support
20110523 Release version 2.2 beta 1
20110523 Added: Allow to store the firewall password in the password manager
20110523 Added: Ask for password when connecting and the password field was empty
20110523 Added: Support multiple firewalls/proxies
20110522 Added: Warning when using Wininet.dll from Internet Explorer 6 with chunked encoding (the dll has a bug resulting in data corruption)
20110310 Release version 2.1 final (unchanged)
20110307 Release version 2.1 beta 2
20110307 Added: Mark locked files as read only (show "r" in attributes column)
20110303 Release version 2.1 beta 1
20110303 Added: Properties dialog (Alt+Enter) to show whether a file is locked
20110303 Added: Support for path names up to 1023 characters (for local files) for uploads and downloads
20101109 Release version 2.0 final
20101109 Fixed: Handle UTF-8 encoded names in file lists in the form %C3%A4.txt -> ä.txt (detect by checking if they form valid UTF8 code, because some servers send ANSI here!)
20101108 Fixed: Support files >2GB in file lists, uploads and downloads (if the server supports it)
20101108 Fixed: When renaming a file on a server using a port different from 80, the "Destination" field must also contain the port
20101108 Fixed: Dropdown combobox with standard server settings not working in Unicode version of the plugin
20101021 Release version 1.9 final (unchanged)
20101013 Release version 1.9 beta 1
20101013 Fixed: Crashes on Windows 7 x64 when using client certificates (cert store must remain open during plugin lifetime!)
20090128 Release version 1.8 beta 1
20090127 Added Unicode plugin and support for TC7.5 password manager
20080813 Release version 1.7 beta 3
20080812 Fixed: Access violation when sending the certificate multiple times
20080808 Release version 1.7 beta 2
20080808 Fixed: Certificate must be sent per connection
20080808 Release version 1.7 beta 1
20080807 Added: Support for SSH client certificate added by user Justin Kreie
20080501 Added: German translation by Ronald Bauer, will be used automatically on German Windows

20070411 Release version 1.6 final (unchanged)
20070403 Release version 1.6 beta
20070403 Fixed: Accented characters no longer working with some versions of Apache (sending accents encoded as %ab%cd, which decodes to _one_ character - UTF8)

20070314 Release version 1.5 final
20070314 Fixed: Connect to server with self-created certificate also on Vista, in case of new error ERROR_INTERNET_SEC_CERT_REV_FAILED

20070311 Release version 1.5 beta 3
20070311 Fixed: Problems with accents and umlauts on servers which return correct UTF8 encoding, but expect UTF8 in URLs too
20070311 Added: Increased download buffer size from 8 to 32kBytes

20070202 Release version 1.5 beta 2
20070202 Fixed: Still crashes caused by very long URLs

20070130 Release version 1.5 beta 1
20070202 Fixed: Crashes caused by very long URLs

20060808 Release version 1.4
20060808 Added code for Apache servers which expect a directory in a request URL to end with a slash

20060118 Release version 1.3
20050118 Fixed: Uploads could not be aborted when hanging
20050118 Fixed: Renaming failed with some SSL servers because the plugin sent http:// instead of https:// as new name prefix

20050928 Release version 1.2
20050928 Added: User can now disable the multi-step upload method. Note that the entire file may be sent TWICE to the same server then!
20050923 Added: User can now manually define a different proxy than in Internet Explorer
20050923 Fixed: Send proxy user+password also manually to avoid problems with unencrypted connections
20050922 Fixed: Proxy user name and password not always working with SSL connections

20050822 Release version 1.1
20050822 Added: When the password has been saved, connect directly without showing the connect dialog
20050809 Added: Basic authentication for proxy servers (Proxy needs to be set in Internet Explorer)
20050809 Added: Merged serveral improvements by Sven Ritter: Saving passwords, bugfixes

20040914 Release version 1.0
20040511 Added: Let the user choose from a list of default WebDAV servers
20040511 Added: Let the user choose whether to delete a file before overwriting or not
20040511 Fixed: Wrong file time shown (time zone problem)
20040507 Added: Before upload with overwrite, send delete command (for 1&1 server, where upload otherwise fails)
20040414 Fixed: Access violation on Win98 when specifying https:// prefix
20040406 Fixed: Problems with servers returning only relative paths
20040405 Fixed: Always append slash to dir name when requesting dir
20040405 Fixed: Problems with dirs containing spaces -> use slash
         count and not dir length to find file name
20040404 Added: Show detailed error in log when connection fails
20040404 Fixed: Changed method to extract names from file listing
20040404 Added: When detailed log is on, store dir listing in TEMP during connection
=========================================================
Compilation
===========

To recompile, you need Microsoft Visual C++ 6.0. Just
double click the davplug.dsw file, then build the project.
The plugin wfx file will always be placed in the wfx
subdir, both for the Debug and Release versions, so it's
not necessary to redefine the location of the plugin
to test both.
=========================================================
Used components
===============

This WebDAV plugin is using the following sources:
- ezdav library for interpreting PROPFIND data
  from http://davim.sourceforge.net/ezdav.html
  Licence: Mozilla Public License Version 1.1.
- expat library for parsing xml (in subdir expat)
  from http://www.jclark.com/xml/expat.html
  Licence: MIT licence
- WinInet libary: Requires an installed Internet
  Explorer 4.01 or newer
- CVTUTF.C and CVTUTF.H: Used to convert to/from UTF-8.
  Copyright 1994-1999 IBM Corp.. All rights reserved.
  See CVTUTF.C for the complete licence.
- My own code parts in davfunc.cpp, multiserver.cpp
  davplug.cpp and utils.cpp are licenced under the
  MIT licence, see end of this document

Author: Christian Ghisler, www.ghisler.com

======================================================================
Legal documents:
======================================================================
ezdav parts:
http://www.mozilla.org/MPL/MPL-1.1.html
======================================================================
CVTUTF.C and CVTUTF.H:
See licence in CVTUTF.C
======================================================================
expat parts:

Copyright (c) 1998, 1999, 2000 Thai Open Source Software Center Ltd

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
======================================================================
Licence for davfunc.cpp, multiserver.cpp, davplug.cpp, utils.cpp and
headers (my own code): This is the modified MIT licence.

Copyright (c) 2004-2014 Christian Ghisler, Ghisler Software GmbH

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
