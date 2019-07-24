Registry v 5.2 - plugin for Total Commander 5.51 and newer.

Home page: http://www.totalcmd.net/plugring/registry.html

These software are provided "as-is". No warranty provided.

You use this program at your own risk. The author is not responsible for data loss, damages, etc.
while using or misusing this software. Think twice before move/delete, it's your own registry!


This plugin is freeware.

Works in W2K/XP/Vista/7/8.

--------------------------------------------------------
Usage:
  Assign command "cd \\\Registry" to button or shortcut
or  
  Choose [Registry] folder in TC "Network Neighborhood"
--------------------------------------------------------

Features:
  - Quick search (click " -Search- ", type 'find' or 'find string_to_find' in the command line)
  - Browse system registry
  - Remote registry connection
  - Create new value
	First way: double click " -Add Value- "

        Second way: Use F7, if first symbol is \,
                   then new _value_ will be created.
                   Use \\ for values like \value.

        Third way: type 'new' from command line.
                    Thanks for idea to Alexey Babenko.
  - Modify values (REG_DWORD, REG_QWORD, REG_SZ, REG_EXPAND_SZ, REG_BINARY).
  - Delete/Rename keys and values.
  - Create keys like folders (F7)
  - View (F3) and Quick view (Ctrl+Q)
  - Export keys and values into .reg file (F5)
  - Export in UNICODE and REGEDIT4 format (REGEDIT4 is off by default, see options dialog)
  - Export binary values as binary file (off by default, see options dialog)
  - Permission edit dialog (Win2k, XP or newer) (right click on key (not value) -> properties)
  - Options dialog (right click on Registry plugin in Network places -> properties, or type "config" in command line)
  - Open in regedit (button from dialogs, Ctrl+Properties in the context menu, or type "regedit" in command line)
  - Shows last modified date on keys (Win2k or newer)
  - special characters conversion (optional, can be switched from options dialog):
	/ - [slash]
	\ - [bslash]
	* - [star]
	: - [colon]
	? - [qmark]
	" - [quote]
	. - [dot]


FAQ:
  - SEARCH IN PLUGIN FILE SYSTEM IS NOT SUPPORTED BY TC 5.50,
    THE FEATURE IS IMPLEMENTED ONLY IN TC 5.51
  - Hkey_users - interpreted by TC as short 8.3 DOS name,
    Configuration->Options->Display->Show old 8.3 names lowercase

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
TIPS:
  - IF YOU RENAMED PLUGIN IN TC YOU SHOULD UPDATE THE NAME IN PLUGIN REGISTRY_VK.ini FILE AS WELL!!!
  - FOR UNICODE VALUE SEARCH IN win2k, XP CHECK "Unicode" IN TC SEARCH DIALOG
  - For much faster export consider turning off Total Commander option: Configuration->Operation->Calculate space->before copying/deleting
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

Version history:
---------------------
v 1.0 - 18.11.2002
  - Initial version

v 1.1 - 19.11.2002
  - New: value creation added (F7, or type "new" from command line, see above)
  - Fixed: crash in binary value edit dialog after total value deleting

v 1.2 - 20.11.2002 
  - Changed: from now to create new value one should use \ instead # (see above)
  - Fixed: incorrect work with values containing symbol '\'.
  - Fixed: Key export improved.
  - Fixed: dialog for value creating was modeless.
  - Fixed: it looks like all bugs in binary edit dialog have been fixed.

v 1.3 - 21.11.2002
  - New: from now one can copy and move keys and values within registry 
  - New: REG_RESOURCE_LIST, REG_FULL_RESOURCE_DESCRIPTOR, REG_MULTI_SZ are editable
  - Changed: repeated message while deleting nested keys removed
  - Fixed: incorrect export of fields with symbol '\' in name or value
  - Fixed: minor bug in binary edit dialog
  - Fixed: there was no possibility to delete values with symbol '\'

v 1.4 - 28.11.2002
  - Changed: values size is shown as file size for all value types
  - Fixed: exception while trying to open key properties.
  - Fixed: icons are shown for each value (TC 5.51 or newer)

v 1.5 b1 - 30.11.2002
  - New: remote registry connection
  - New: adopted for TC 5.51 (as result F3 and Ctrl+Q may not work with TC 5.5)
  - Fixed: incorrect work if key and value had one name (icon still is not showed)
  - Fixed: new created empty string value contained strange symbols

v 1.5 b2 - 05.12.2002
  - New: options dialog (right click on Registry, select Properties)
  - New: export using UNICODE (off by default, see options dialog)
  - New: export binary values as binary file (off by default, see options dialog)
  - New: permission edit dialog (Win2k, XP or newer) (right click on registry KEY (not value!) -> Properties)
  - New: Open in regedit button

v 1.5 b3 - 06.12.2002
  - New: from now options are saved to .ini file
  - New: third way to add new value, using " -Add Value- " (optional, see options dialog)
  - New: date/time is shown for keys
  - New: special characters conversion, optional, "\" is being changed to "[slash]" and so on, see features list

v 1.5 b4 - 11.12.2002
  - New: value edit using F4, regedit used for import after edit
  - Fixed: (!) (win9x only) .reg file with single value could not be imported because of the missing trailing symbol '\n'
  - Fixed: permission edit dialog functionality now equal to the one in regedt32.exe in Win2k
  - Fixed: more accurate exporting and editing values like REG_RESOURCE_LIST, etc.
	   Now export is equal to the one done by regedit and without regedit bugs.
  - Fixed: some keys could not be exported due to " -Add Value- ".
  - Fixed: back compatibility with TC 5.50 ("$wc" and "_tc" temp folders now treated equally)
  - Nice: found a bug in MS regedit (at least during export of some empty values in Win2K SP3,
          previous value is repeated)

v 1.5 b5 - 23.12.2002
  - Changed: adopted for TC 5.51 b4
  - Changed: dot is not translated for keys
  - Changed: slash is not translated for keys in TC 5.51 b4 (plugin interface version > 1.2)
  - Fixed: default button for all edit dialogs
  - Fixed: F3 on service files like "Connect network registry"
  - Fixed: binary edit dialog text color with non-default window color
  - Fixed: some keys had no date
  - Fixed: bug with stack overflow while text search

v 1.5 b6 - 7.01.2003
  - New: command line instruction "config" to call options dialog
  - Fixed: some keys could not be renamed in win2k, keys renaming in win9x didn't work at all
  - Fixed: string values in win9x treated as binary

v 1.5 Final - 22.01.2003
  - Fixed: crash while "cd" command processing
  - New: "cd" command support (e.g. cd Software, cd \HKEY_USERS\.Default, cd "New Key #1, cd.., cd .., cd \, cd \\\regplgname\xxx\")
  - Minor interface improvments

v 1.5.1 - 20.02.2003 
  - Fixed: bug with stack overflow and TC crash while text search

v 1.5.2 - 25.02.2003
  - New: export setup dialog (Win2000, XP only)
  - Changed: only trailing dot is converted for keys (e.g. BCM Advanced Research, Inc. -> BCM Advanced Research, Inc[dot])
  - Fixed: all key names in export file were upper-case
  - Fixed: some keys with russian names could not be opened
  - Fixed: one option in options dialog did not work properly

v 1.5.3 - 14.03.2003
  - New: progress bar for export
  - New: error message is displayed if a folder could not be created, deleted or moved
  - Changed: perfomance improvment, especially export
  - Changed: overwrite confirmation for export
  - Fixed: -Add Value- export
  - Fixed: huge values processing improved (REG_BINARY with size > 1Mb)
  - Fixed: icon for REG_NONE

v 1.5.4 - 15.08.2003
  - Fixed: empty keys exporting and deleting in Win9x and Win2000
  - Fixed: string value edit in Win9x
  - Fixed: export for WinNT 4.0 (from now only REGEDIT4 format is allowed)
  - Fixed: permission edit is now supported for NT4 (in progress, not finished yet)
  - Fixed: error while using F7 for value creation
  - Fixed: default icon for default value inside of remote registry
  - Fixed: incorrect work with remote registry

v 1.5.5 - 10.11.2003
  - New: last connected remote host name is remembered (latest version of .ini file is used)
  - Fixed: some error messages were missed while working with remote registry
  - Fixed: incorrect icon for remote registry root values 
  - Fixed: icon for REG_RESOURCE_REQUIREMENTS_LIST
  - Fixed: some bugs with non-english keys and UNICODE export

v 2.0 - 26.11.2003
  - New: "Open in regedit" button now opens not only keys but values
  - New: UNICODE support for fields dialogs
  - New: Mutiline strings support, e.g. \\\Registry\HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\SystemBiosVersion
  - New: extended value creation dialog for the next types - REG_MULTI_SZ and REG_EXPAND_SZ
  - New: different icons for ordinary strings and REG_MULTI_SZ, REG_EXPAND_SZ, 
	 as well as for unusual binary fields, like REG_FULL_RESOURCE_DESCRIPTOR
  - New: 16x16 main icon added. Looks better in TC toolbar
  - New: XP-style icons
  - New: plugin executable is packed with AsPack
  - Fixed: finally export is fully synchronized with export using regedit, including REGEDIT4
  - Fixed: binary edit dialog with large fonts
  - Fixed: multiple connection to the same host

v 2.1 - 30.06.2004
  - New: UNICODE mode is allowed for NT4
  - Fixed: read-only values now can be viewed from edit dialog, but are shown as read-only
    e.g. \\\Registry\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\ACPI\ values
    
v 2.2 - 1.07.2004
  - Fixed: crash while exporting key from remote registry
  - Fixed: binary edit dialog enabled for read-only values
    e.g. \\\Registry\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\ACPI\ values
    
v 2.3 - 2.07.2004
  - Fixed: export of REG_EXPAND_SZ value in REGEDIT4 format
  
v 2.4 - 6.07.2004
  - New: search for human readable content of REG_EXPAND_SZ values
  - New: " -Add Value- " file is now excluded from search
  - Fixed: export of REG_EXPAND_SZ value in REGEDIT4 format (exported like REG_SZ in previous version)

v 2.5 - 17.09.2004
  - New: Russian language support
  - New: export with timestamp option - time format is sort suitable (should be turned on in configuration dialog, works for NT4, Win2k, XP, etc.)
  - New: New value index autoincrement
  - New: export of multiple keys at once (off by default - lot of empty folders can be created, probably bug of TC; should be turned on in configuration dialog)
  - Fixed: export of REG_SZ values with 0D, 0A bytes
  - Fixed: tabstops and accelerators for dialogs

v 2.6 - 12.01.2005
  - New: autoinstall support (starting from TC 6.50)
  - New: type name in edit dialog caption
  - Changed: from now search through REG_EXPAND_SZ value is performed as search of any other hex(n) value
             instead of "search for human readable content of REG_EXPAND_SZ values" in version 2.4, just for consistency
  - Fixed: modeless message box in configuration dialog
  - Fixed: improved work with multiline strings
  - Fixed: hotkeys and some other fixes in russian version
  - Fixed: search of values did not work. Search works a bit faster now.
  - Fixed: export of strings in REGEDIT4 on >= NT4 systems
  
v 2.6.1 - 14.01.2005
  - Fixed: export of expandable strings (and possibly other types) in REGEDIT4 format on >= NT4 systems

v 3.0.0 - 10.06.2009
  - Added: Additional columns 'Type', 'Size', 'Value', 'Date'
  - Added: Additional columns can be turned off (do not forget to switch to standard columns, edit wincmd.ini if required)
  - Added: QWORD, creation and editing
  - Added: Greek language
  - Changed: improved DWORD editor
  - Changed: improved UNICODE support
  - Changed: Win9x are no longer supported, older version of the plugin should be used

v 3.1 - 13.06.2009
  - Added: Long file and registry paths support
  - Changed: Restored compatibility with earlier versions of TC (before 7.5)

v 3.2 - 20.06.2009
  - Improved: safer and smaller code

v 3.3 - 25.06.2009
  - Added: Flexible localisation with files
  - Added: String view for binary values
  - Added: open in regedit by Ctrl + Properties or by typing "regedit" to open current key
  - Fixed: "Additional columns" option is now persisted
  - Fixed: open in regedit for UNICODE keys and values
  - Fixed: wrong size for string values in TC before 7.50
  - Fixed: updated file version

v 3.4 - 25.06.2009
  - Fixed: stability improvements, bugfixes

v 3.5 - 25.06.2009
  - Fixed: minor bugfixes

v 3.6 - 01.07.2009
  - Added: Spanish language
  - Added: "Effective permissions" tab in permission dialog (Win2K3+)
  - Added: Proper "Inherited From" in permission dialog
  - Added: Fast export option (no progress bar)
  - Changed: Better font in the dialogs
  - Fixed: Improved export performance
  - Fixed: Permission dialog localisation and few minor issues
  - Fixed: Export of already incorrect REG_SZ strings with new line characters, now export is identical to regedit
  - Fixed: DWORD values were created as 8 byte values (QWORD), this was an issue in XP

v 3.7 - 03.07.2009
  - Fixed: No more empty folders appearing during multiple keys export (Still possible in very exotic scenarios)
  - Added: Export of multiple keys/values to common file
  - Changed: new options in the Options dialog, now it is more consistent
  - Fixed: Export of invalid DWORD values (size is not 4)
  - Added: Greek language
  - Added: Option to show 'real' size of string values (ASNI * 2)

v 3.8 - 06.07.2009
  - Added: Sample translation for custom columns and sizes (byte, KByte, etc), Russian only for now, other languages are always welcome!
  - Added: Ukrainian language
  - Fixed: Restored compatibility with Win2K and Win2K3 (not tested in Win2K, fingers crossed...)
  - Fixed: Dialog layout for localized labels
  - Fixed: "Real size" option for TC 7.04
  - Fixed: crash when opening DWORD/QWORD values with invalid size (>8)
  - Changed: Made more obvious the fact that export with timestamp is available only in UNICODE format

v 3.9 - 08.07.2009
  - Fixed: incorrect value in additional column when not all provided columns are visible
  - Fixed: drastically improved export performance in Vista
  - Fixed: export from remote registry (depended from TC version)
  - Fixed: UNICODE support for some message boxes
  - Changed: no more questions about multi-file export during search
  - Changed: search performance improvements
  - Changed: unified code for both ANSI and UNICODE versions of TC API, smaller code size
  - Changed: Updated translation to Ukrainian
  - Changed: Updated translation to Spanish

v 4.0 - 23.07.2009
  - Added: Language combo box now shows language names instead of file names
  - Fixed: tab stops in the options dialog
  - Changed: Additional export/search performance improvements
  - Changed: Updated Greek translation

v 4.1 - 31.07.2009
  - Added: Quick search (type 'find' or 'find string_to_find' in the command line).
	   String values only for now (REG_SZ, REG_MULTI_SZ, REG_EXPAND_SZ).
	   Search is faster in XP, slower in Vista and 7.
  - Changed: Improved icons (main, keys, add value, etc)
  - Added: Default icon set option, like in regedit
  - Added: Option to hide size suffixes (b/k/M)
  - Fixed: Values created by F7 + "\valuename" now have no first backslash in the name
  - Fixed: Incorrect behaviour in rare cases when value name contained slashes
  - Fixed: Lower case symbols in exported HEX values

v 4.2 - 11.08.2009
  - Added: Open the search dialog from the GUI in addition to command line
  - Added: Remember previous search strings and paths
  - Added: Search in the subkeys
  - Added: Option to hide remote registry connections
  - Fixed: Error beep when cancelling value creation via F7
  - Fixed: Go to a key from search window in TC before 7.5
  - Fixed: Show values in the search result list even if only value name matches
  - Fixed: Crash during subsequent searches when first search string is long enough
  - Changed: Split the folder icons and extended icons options
  - Changed: Updated translation to Ukrainian
  - Changed: Updated translation to Spanish

v 4.3 - 11.08.2009
  - Fixed: Crashes in TC 7.04
  - Fixed: Case of search results (value and data)
  - Fixed: Random value in data columns when value is empty

v 4.4 - 17.08.2009
  - Added: Search in all data types
  - Added: Binary search
  - Added: Search history persistence (20 items)
  - Added: German translation
  - Changed: Search performance tuned
  - Fixed: Workaround for TC Plugin Manager bug
  - Fixed: Editing of value names containing slashes (from search result list)

v 4.5 - 21.08.2009
  - Added: Wildcard search
  - Added: Search by dates
  - Added: Search by size
  - Added: Context menu in the results list
  - Changed: Numerous search dialog imporovements/fixes
  - Fixed: Export without virtual values like -Add Value- or -Find-, 
	   it is recommended to have at least one of them on

v 4.6 - 28.08.2009
  - Fixed: Lower case of the last search string
  - Added: Improved "go to key" functionality with modeless search dialog
	   (you have to amend .ini file if plugin name differs from the standard "Registry")
  - Added: Better handling of default values in the search list
  - Added: Icons in the search result
  - Changed: Improved speed of "Open in regedit" (may not work on slow old machines)
  - Changed: Updated Ukrainian, Spanish and German translations (Thanks guys!)

v 4.7 - 11.09.2009
  - Added: Search results sorting
  - Added: Search window icon
  - Changed: Updated translation to Ukrainian

v 4.8 - 25.09.2009
  - Added: Resizable search window
  - Added: Better keyboard support in search window (Enter, Context menu and Shift+F10)
  - Added: Tooltips in search result list
  - Added: Alternative row color
  - Added: Remote registry search
  - Added: Remote hosts history (20 successfull connections)
  - Added: Mutiselection in the disconnect window 
  - Changed: Improved remote registry hives handling (HKLM & Users only)
  - Changed: Improved sorting performance
  - Changed: Multiselection in search result window (use Shift+Copy to copy one cell only)
  - Changed: Search can be cancelled much quicker, UI is more responsive

v 4.9 - 19.05.2011
  - Added: 64-bit registry support or 32-bit version of the plugin (see options)
  - Added: 64-bit plugin version (with access to 64 and 32-bit registry, see options)
  - Added: Delete search results from search window

v 5.0 - 15.07.2012
  - Fixed: Search window does not disappear right after opening (x64 only)
  - Fixed: Recompiled in VS2008 for compatibility with Windows 2000 (also fixed search)
  - Fixed: Better work in some x64 systems - no more duplicate Wow6432Node keys in WinXP x64, no crash during search
  - Fixed: Crash when accessing remote registry (TC 8.01)
  - Fixed: Main icon was not displayed in some systems
  - Changed: Show found key path as if inside HKEY_CLASSES_ROOT only when searching in HKEY_CLASSES_ROOT, otherwise keep original HKLM path
  - Changed: updated Danish and German translation

v 5.1 - 21.07.2012
  - Fixed: 32-bit plugin was not working properly with Wow6432Node key in WinXP x64 when accessing x64 registry
  - Fixed: Main TC window was not captured properly in TC 8.01 and sometimes plugin dialogs were not working
  - Added: Icon substitution - *.ico files with predefined names are loaded from plugin folder before falling back to icons from resources. 
           File names are (w/o extension) - Main, String, StringSpecial, DWORD, Binary, BinarySpecial, Add, Connect, Disconnect, Host, Key, Search.
           Main icon cannot be changed, file "Main.ico" changes search window icon.
  - Added: Hungarian translation
  - Changed: Danish column translation

v 5.2 - 03.08.2012
  - Fixed: Removed custom column <fs>.writedate as tc.writedate can be used instead
  - Fixed: Hungarian translation in pluginst.inf
  - Changed: Improved handling of spec symbols in file name when exporting a key into a file


Author:
  Vitaly Knyazev, London, UK
  E-mail: karapuz79@tut.by
  ICQ#: 116227