APK-wdx 2.1
-----------
An Android application package (APK) content plug-in (wdx) for Total Commander.
Scans .apk files for specific information. (App name, version, target and minimum OS, etc.)

Can be used in all program parts where content plug-ins are supported
(besides changing them in TCs 'Change Attributes...' and for 'Synchronize Dirs...'),
like Custom Columns, user-defined help texts ("Tooltips"), Thumbnail view, Multi-Rename Tool, etc.

As of version 2.0 you can also register the plug-in as a Lister plug-in (wlx),
so that you can see the App icons in TC's preview/thumbnail mode, and view
assembled App information in Lister/QuickView.

Uses a custom Android Asset Packaging Tool DLL file in order to work,
but you can change that to use the external official retail tool (aapt.exe) instead.
So either always keep the DLL in the same directory as the plug-in file itself, or the exe file
in a location you specify via the plug-in's INI file (see the options below).

The plug-in fields are self-explanatory.
Note that not all fields are available for specific APK files, so they might be empty or zero.
The language fields use the default App name when no specific language string was found.

The content field 'String pool' is only available for the search dialog (Alt+F7)
with the Plugins tab (the very last field, following the language-specific App names).
It parses the 'resource table string pool' in the APK, meaning that all strings that
are available in the strings.xml and the names for resource files (e.g. Pictures/Images)
can be searched here.
It might not parse some language-specific strings (depending on the App's config) and
hardcoded strings found in e.g. layout-XMLs, so you shouldn't expect that all
strings you can see in an App are available for search.
Also note that the search is limited to ANSI strings with Total Commander before version 9.0.
You can use TC's Lister to view that same string pool (if registered as Lister plug-in),
but with full Unicode support in any case.



System requirements (32bit)
--------------------------
Total Commander 7.50 or newer is required.
Works on Windows 2000, XP or newer.



Installation
------------
Just open the plug-in archive in TC and it can install the plug-in (as content plug-in) automatically.
Otherwise copy the archive's content to the location you want (preferably a sub-dir
of TC's installation directory) and select the plug-in manually in the configuration.
Just make sure you also copy the aapt.dll file.

The plug-in ships with both the 32- and 64-bit version.
If you don't use Total Commander x64 you may delete the 'aapt64.dll' and 'APK.wdx64' files
to free some space, likewise delete the 'aapt.dll' and 'APK.wdx' if you never plan to use 32-bit.

***Lister plug-in***
The plug-in main file can be used as a lister plug-in, no matter the extension.
There are basically two ways to register it properly:

Use the same file: (the recommended way)
Just open TC's wlx plug-in 'add' dialog. Type '*' or '*.*' and press return
to remove the file extension filter. Now navigate to the wdx plug-in dir and open
'APK.wdx' or 'APK.wdx64' (depending on TC version).
It won't matter to TC if the file is already registered as wdx, it will still
work properly for the Lister interface.

Make a copy:
Just copy the plug-in files to a new/different location and rename the wdx/wdx64
extension to wlx/wlx64. Now register the renamed file in TC's Lister plug-in config.
This might be 'redundant' and waste disk space though, but will still work of course.

A third way might be to directly mod the wincmd.ini file, but you should know
how to correctly format the entries.

Note that you probably need a higher plug-in priority when you have different plug-ins
installed that *may* try to open/view zip archives, due to the fact that APK files are
merely renamed ZIP files (you can open them in TC like normal zip files).
To do this, just move it to a higher/top position in the wlx plug-in list, leaving
all plug-ins that might interfere below.



Notes and Limitations
---------------------
* Some Files with paths above 259 characters might not read due to command line limitations,
  but these situations should be quite rare.
* Content plug-in: Fields which enumerate things (e.g. permissions) are separated with
  a space character. You can overwrite the separating string with an INI options (see below).
  Most parts are also uppercase strings, which might reduce readability,
  but you can also use an INI option to prevent this.
* Content plug-in: The field 'String pool' is limited to ANSI text with Total Commander before version 9.0,
  which means that characters which don't fit in your system's ANSI page (e.g. 1252) are replaced with
  question marks, and therefore false matches may occur. So it's best to limit the search to ASCII characters,
  or characters from your ANSI page only, or you use the lister plugin if you only want to search through a single file.
* Lister plug-in: If you set your desktop color depth to 16bpp (or sth. other than 32bpp), the preview/thumbnail
  pictures will lack alpha blending (alpha channel) if they contain a larger amount of such pixels.
  In Windows 2000 such images might also look weird in Lister/QuickView for the alpha portion (no matter the
  color depth), due to the lack of correct automatic blending, but preview/thumbnails seem to work all right.
* Lister plug-in: TC will treat files that are just renamed ZIP files quite weird:
  If the archive contains a .txt file, TC will decompress and display that file instead
  when using QuickView (not the normal Lister). Since APK files are just renamed ZIP and many (most?)
  of them contain .txt files, you should expect to see the plug-in not working for some files in QuickView.
  Total Commander 9.0 and above is finally able to drop that behavior, by using the Ini option 'QuickViewUnzipReadMe'
  and setting it to either '0' or '-1'.
* Lister plug-in: The assumption is that the default (launcher) icon is in the PNG format,
  which is the Android recommendation. I haven't seen an app that uses non-PNG (e.g. JPG), but if some does
  have it for real, the plug-in won't be able to decode it and the image in preview/lister will be empty.



INI file and options
--------------------
The options reside in the config file 'contplug.ini', which is normally located
in the same location as the TC main config file (wincmd.ini), and where
all content plug-ins can store their settings (but only a few actually do).
You enable most boolean (yes/no) options with '1' and disable them with '0',
all other options as noted.

NumericFields: Returns 'Version Code', 'Min SDK' and 'Target SDK' as sortable numbers rather than
strings, so that they are definable with a certain min/max level in TC's search function.

AppendVersionName: Appends the "internal names" for 'Min SDK Name' and 'Target SDK Name',
e.g. 'Jelly Bean' for Android 4.1.x and so on.

PermissionsLowerCase: Tries to transfer 'Permissions' to lower case text, since the mix of
upper and lower case permissions might reduce readability when this option is not set

DisableCaching: Disables internal caching. Probably only useful if files, that
change in content although size and modification time stamp stay unaltered, are a concern.

CacheSize: The cache size. Only used if 'DisableCaching' is not enabled.
Cache means that the aapt output for a file is cached completely in
RAM, and is retrieved in an instant if TC requests info for the same (unmodified) file again.
Valid values range from 0 to 7, where 0 (default value) means a minimum cache of 20 (which
already helps in case of multiple fields in Custom Columns), while the remaining values mean:
  1: 1024 entries
  2: 2048 entries
  ...
  7: 65536 entries
Note that a high value may lead to a significant memory consumption; for
modern machines it should be no problem though (up to 150 MiB for 65536 entries).

ClearCacheOnReread: When enabled, clears the cache (if caching is enabled) when pressing
F2 or Ctrl+R in Total Commander (or a corresponding menu/internal command).
This means that any manual refresh for the current view at any time will
clear the cache completely, no matter what view is currently active.

EnumSeparator: Character or string that separates enumerating fields, like 'permissions'.
Default is a space character, which is represented by '\x20' (hexadecimal),
because whitespace is problematic for INI files.
Any other hex character can be entered the same way and you can mix these with
normal characters, so that sth. like this is possible:
EnumSeparator=\x20\xabSEPARATOR\xbb\x20
You may also enter a Windows newline character via '\x0d\x0a', which will produce
a new line for each element in lister/quickview, but it is replaced with space for
display in custom columns. You should take care when using fields with such characters
for the Multi-Rename Tool, since newlines are not allowed in a file name.

UseAaptExe: The plug-in will skip the use of the internal DLL ('aapt.dll' or 'aapt64.dll'),
and tries to use the external official retail tool (aapt.exe) instead. It is expected
to reside in the same dir as the plug-in file itself, but you can override that with a custom path (see below).
I don't recommend to use the aapt.exe file, since it is a lot slower in getting all
information, plus there is no direct control over the whole process, and some infos
may be missing due to outdated APK format info.
It will still do it's job of course, so you may decide to save some space by using an
already existing aapt program, like the one from the great Android ADB plug-in.

AaaptExePath: The custom path for 'aapt.exe', which is used along with the 'UseAaptExe' option.
Always use the full path, e.g. "c:\dir1\TC\plugins\aapt.exe". If you leave this key empty,
the plug-in assumes it will find the program in the same dir as the main plug-in file.
Note: environment variables should work, so that you may use sth. like: "%COMMANDER_PATH%\plugins\aapt.exe"

ListerHqDownsampling: When set to '1', the plugin will always use a high quality downsampling algorithm
(Lanczos resize) for preview/thumbnail and Lister, when the app's default (launcher) icon is bigger than the
desired output size (i.e. TC thumbnail size or the image frame in Lister window). Otherwise (when set to '0'),
the default bilinear resize will take place. Note that hq resize is at least an order of magnitude slower
than bilinear resizing, but for modern (powerful) systems you shouldn't see much of a speed impact
for getting a much better image quality in trade.
When set to '2' (default value), the plugin tries to detect if the system CPU is powerful enough for
hq downsampling and enables or disables it permanently when the plugin is being loaded.

ListerRawOutputOnly: When set to '1', skips the assembling of the filtered fields for the Lister window,
so that you will only see the (raw) AAPT output and the string pool output.
When set to '2', shows nothing but the assembled app info fields in Lister/QuickView,
skipping the raw aapt and the string pool output completely. This might be faster for QuickView
when quickly navigating through many apk files, as the string pool might take some time to load
and slows down the response time for the viewer window.

SearchLargeIcon: When set to '1' (default), the plugin tries to detect the largest available app
(launcher) icons for TC's thumbnails and Lister/QuickView. Otherwise the exact icon from the aapt output
will be used. As aapt returns the mdpi (medium screen resolution) icon path in many cases, this option
helps to load the largest and therefore probably the best quality icon from the app.


History
-------
Version 2.1 - Jun 20. 2016
 - the plugin can now optionally detect and use the largest available app (launcher) icon for TC's thumbnails
   and Lister/QuickView (new ini option) (reason: aapt returns the mdpi icon path in many cases)
 - high quality app launcher icon downsampling can now optionally be used automatically,
   depending on the system CPU (when ListerHqDownsampling=2)
 - high quality downsampling auto detection is now the default for new plugin installations
 - added Total Commander 9.0 Unicode 'fulltext' search support (content plugin)
   -> you should now be able to search for any Unicode string in the app string pool
 - the aapt string pool output will now have invalid UTF-8 characters replaced, making
   the flawed string pool output for some apps finally "readable" (formerly recoded to ANSI)
 - you can now optionally show nothing but the assempled app info fields in Lister/QuickView,
   skipping the raw aapt and the string pool output completely (might be faster for QuickView
   when navigating through many apk files) (new option value: ListerRawOutputOnly=2)
 - fixed a possible crash in 32-bit when using TC's 'fulltext' search in the string pool (content plugin)
 - the text window in Lister/QuickView window will now use the global system color for text and background
   (formerly black text on black background with some high contrast color settings)
 - added SDK 23 name
 - raised maximum string pool length

Version 2.0 - May 18. 2015
 - major improvement: merged a Lister (wlx) interface, which will show the app icons as
   preview images (thumbnails) in TC, and shows all assembled App information in the Lister/QuickView window;
   additional lister features: text highlight/copy, text search, word wrap, font size change (numpad add/subtract)
 - added options for lister interface: 'hq downsampling' and 'raw output only'
 - new field: App launcher activity name (might be empty)
 - new field: App provided components (e.g. widget, wallpaper, launcher, search, ...)
 - improved RegEx for 'Screen Sizes' and 'Resolutions', to avoid unnecessary string separators
 - SDK 22 is now called 'Lollipop MR1'
 - SDK names will now show the SDK number in parentheses for newer versions, where a name is not implemented yet
 - internal improvements

Version 1.5 - Apr. 16. 2015
 - major improvement: a custom aapt DLL file, which is used instead of the external exe file
   for a great general speed improvement (assuming that I/O performance isn't a limiting factor),
   plus it can now use native x64 code
   (based on the newest Android 5.1 code from March 2015)
 - added options to use the aapt.exe program nonetheless, with a possible custom path
 - caching can now be customized with a large number of entries, to improve usability,
   like when having low I/O performance or when a lot of sorting in custom columns takes place
   (uses the lz4 compression library to keep memory requirements low)
 - fixed: app version sometimes showed value for 'platformBuildVersionName' instead of the true version string
 - new field: App main icon file (path in the archive)
 - included SDK 22
 - modified some RegEx to recognize older aapt.exe program's output
 - most paths > 259 characters (MAX_PATH) should work now, due to using SFN paths in that case
 - many internal improvements

Version 1.1 - Jan. 7. 2015
 - crash fix due to caching (could occur when switching sort mode on custom columns)
 - added full text search for resource table strings
 - internal improvements

Version 1.0 - Dec. 21. 2014
 - added INI options
 - Translation file (APK.lng) - contains only German for now,
   you can add your language by creating a new section with the language name (e.g. 'fra')
 - fixed: missing 'en' for localized App name
 - included SDK 21 (Lollipop)
 - verified Unicode support
 - aapt.exe update

Version 0.9 - Sep. 12. 2014
 - added UTF-8 support - App names should now decode properly
 - added fields for localized App names (uses ISO 639-1 scheme)

Version 0.8 - Sep. 11. 2014
 - first (public) release



Author and Copyrights
---------------------
This plug-in was created by Michael Loster "milo1012".
It is released as freeware and can be distributed freely.
This software is provided 'as-is', without any express or implied warranty.
In no event will the authors be held liable for any damages arising from the use of this software.
The source code (besides the third-party code mentioned below) can be used freely,
provided that the original author is mentioned for any use of modified or unmodified code.

This plug-in uses the Perl Compatible Regular Expressions library. See the "PCRE license.txt" in the source for legal stuff.
This plug-in uses the UTF-8 CPP library from Nemanja Trifunovic.
This plug-in uses the lz4 (Extremely Fast Compression algorithm) library from Yann Collet. See the lz4 source for legal stuff.
This plug-in uses the miniz (Single C source file Deflate/Inflate compression) library. See the miniz.c file in the source for legal stuff.
This plug-in uses the LodePNG (PNG image decoder and encoder) library from Lode Vandevenne. See the source files for legal stuff.
The plug-in may use the Android Asset Packaging Tool included in the Android SDK,
available at: http://developer.android.com/sdk/index.html

The modified source for aapt used for the 'aapt.dll' is hereby licensed under the Apache License, Version 2.0.
See the 'NOTICE' file in the source for legal stuff.
Feel free to further modify the source to make it more "standalone and compiler friendly".
(as it uses some ugly GNU C++11 extensions by now, which makes it almost impossible for Visual C++)

The main functionality of this plug-in is based on and inspired by 'APK-Info' by 'ZoSTeR',
http://www.ghisler.ch/board/viewtopic.php?t=32908
Many thanks!
