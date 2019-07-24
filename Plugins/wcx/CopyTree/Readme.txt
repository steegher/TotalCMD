CopyTree plugin for Total Commander
-----------------------------------
(English section is below)

������������ ������ ��� ����������� ������ � ����������� ���������:
+ �����������/����������� ������ �� �������� ������ (branch view) � ����������� ������
+ ������ ������ ����� ����������� ������� ��������� � ������������ �������������� ���� ��� ������� ��������
+ ����������� ������ ����� ����� ������ ��� ���������/����������
+ ����������� ������ ������� ����������, ��� ������� ������� Win ��� ������ ���
+ ��������� ��������������� (������� �������� � �� 7.55 � ����� �������)
+ ����������� ����������� ��������� ����� ���������
+ ��������, ���� �� ��� ����� ���� ����������
+ ������ ��������� �������


1. ��������� � ���� ������������

��� ��������� ������ ������� � ����� ������������, �� ������ ��� ��������, ������ �� �� ���������� ���. ����� ���������� ������ �������, ��������� ����� � �����-������ �����, ����� � ������� ������������ ������������ �������� �������� ����������, ������� ����� ������������� � �������, � ����� ������� ���� � ������. ������������� ��������� ���������� CopyTree (��� ����� ������������ � ������ ������� ������� �������� ������).

���� � ����� ������������ �� �������� ������ ��� �������������. ���� ����� �� ���� ������� (��������, ������ ��������� ���� 5.51) ��� ���������� INI ���� � ������ ������ � ��� �����, ���� ���� ����� �������������� ��� ���� ������������. ��������� ����� ����� ���� ��� ANSI, ��� � ������ - �� ����� ��������, ������������ ���� � ����� ��������� ���������.

��������� ������ [Copy Tree]:

	AskOptionsOnWin=1
		���������� ���� ������ ������� ����� ������������, ���� ������ ������� Win;
	AskOptionsAlways=0
		���������� ���� ������ ������� ����� ������ ������������;
	CopyAllTimes=0
		���������� ������ �������� ��������� ����� (�����������) ��� ��� ��� (����� �������� � ���������� �������);
	CopyDirTimeStamp=0
		���������� ��������� ����� ���������;
	MoveEmptyDirs=0
		������� �������� ������ �������� ��� �����������;
	DefaultCopyLevel=0
		��������� �������������� ������� ���������. ���� >0, ��������� ����� �������, ������� ����� ����������� (1 - ������ ���������� �������, 2 - ���� ��� ���� �������, � �.�.), ���� <0 - ����� ������� �� ��������� ��������, ������� ����� ���������� (-1 - ������ ���� � ������ �����, -2 - ������ ���� ��� ����� ����� � �.�.). ��� ������ ������� ������ ������� ������ �� ����� ������������� ��������. ��������� ��������� ��������� ������������ ����������� ������� ������ ������� ��� ����������� �� ����������� ������;
	Language
		��� ���������� ����� ����� ��������� (��� ���� � ����������).


2. ����� ����������� � �������������

������ ��������� ��������� �������� ��������� ��� ����������� ��� ����������� ������ ������������ ���������� ������. ��� �������� ������� � ������� ������ (�� ��������� Ctrl+[Shift+]B; � ����������� ������� ����������� ������� "�������� ��� ����� ��� ������������") � �� ������ ����������� ������ (� ����������� ������� ����������� ������ "����� �� ������" � ������� ����������� ������). ��� ������� ����������� � ���� ������� �� ��������� ��� ����� � ���� ���� (� �� 8.50 ��������� ����� ���������� �������� ������������ �������� �������� � ������� ������).

��� ����������� ������ � ����������� �������� �������� ��������� ����� �������� ��� �����, ������� ������ �������� ������ (�� ��������� Alt+F5), � ������ ��������� ������� ������� CopyTree (���� ������ �������������� �������, ���������� ����� ���� ������) � ������ ��. ��� ������������� ����� ������� ������ ������ �������. ������ ��������� ��������� ������ ���������, ����������� �������� ��������� ����������� ������� ������ � �.�. (����� ������ �������� ������ "����������", ����������� ���������� ���� ������������ � ����� ����� ��� ��������������).

��� ������� ������ "������" � ���� ��������� �������� �� �� ��������� �������� ����������. ������ ����������� ����������� � CT, ��� ���� � ���� ������������ �� ������ ��� �������� �������� �������� ��� �� ������ ������ ������, ��� ���������� ����������� ������� ���������� �������� ���������� ������ ������� Esc.

���� �������� ����� ����������� ��������� ����� ��������� �/��� �������� ������ �������� ���������, ����� ���������� ����� ����������� ������ ����������� ���� ������������� ���������, ����� �� ������� ���� �����������. �� ���� ����� � ����������� �� �������� � ��������� ����� ����������� ����������� ��������� ����� ��������� (��� ���������, ����������� � ����� ����������) � �������� ������ �������� ��������� (���������, ������� ����� ������� ����� �������� ������ �� ��� � ����� ���������� � �������� ������ ��������).

�� ���������� �����������/����������� ���� ������ ������ ���������� ��������� �� ������� ������, ������� �� �����-���� ������� �� ���� ����������.


3. ������ ������ ������� ���������

������ ����� ���� ������� ����� ������� �������� ����������� ���������� � ������ �� ������. ��� ����������� �� ������ ����������� ������ (���� �� ����� �������� DefaultCopyLevel) ������ ������������ ������, � ��������� ������� - � ����������� �� �������� ������. ������ ��������� �������� ���� ����������, ������� ������� ���������� ��������� ���������, � ����� ������ ����� ����� ��� ���������� �/��� ������������ ������.


3.1 ����� ����� ����������

��� ������ ������� �������� ������ �� ���������� ������� ����� � �����-���� ������ � ���������� ������. ������ ���������� ���� � ����� ���������� � ������� ������ �������, ��� ��� ��� ������������� ����� �����������������.


3.2 ����� ������� ���������

������ ���������� ������ ��������� ��������� ��� ������� ����������� �����. �������� �������� ������ ��� �����, ��� �������� � ��� �����, ����� ���� ������������ ��������� � ��� ����� � �.�. ��������, ���� ������ ���������� ���� ����� ���� C:\Windows\System32\write.exe, � ������ ����� ������������ �������� write.exe, System32\write.exe, Windows\System32\write.exe � C\Windows\System32\write.exe. ����� �������� �������� �� ��, ����� ��������� ��������� ����� ����������� � ����� ����������.

��������� ���������� ����� ���� ���������� ������� ���������, � ��� ������ ���� ����� ��� ���� ���������� ������. �������� �� ������, � ������� ������� ������� �� �������� ����� ��� ���� ������, ���������� ��������������� ������. ��������, ���� �� ���� ����������� ������ ���������� ����� C:\Windows\System32\write.exe � C:\Windows\explorer.exe, ������� write.exe ����� ������� ������ '!', �.�. ��� ���� ������� ��������� ����� C:\Windows\System32, ������� �� ���������� � ���� �� ������� ����������� �����. � �������� �����������, ���� ������ ������� �� ������ '!', ��� ������� �����, ������� �� ����� ���� ����������, ����� ���������� �������������� � �������� �����.

��� ����������� � ������� ������ � ������� �� ��������� ������������ �������, ������������ ���� � ����� ������������ �������� ���� ������. ��������, ���� �������� ������� ����� � ����� C:\Windows � �������� ���� C:\Windows\System32\write.exe, ����� ��������� ������� System32\write.exe.

��� ����������� �� ������ ����������� ������ ������� ���� �����������, ������� �� ��������� ������������ ������ �������, �� ���������� ������ '!'.


3.3 �������� ����� ������ ��� ���������/����������

���� "������ ����� ����" �������� �� ���� �� ��������, ��� � ��������������� ���� �������� ������� ����������� ��, �� ��� ��������� �������� ������. ����� ������� ���� ��� ��������� ����� ��� ���������� ������, ����� ����� ������� '|' ����� ������� ���� ��� ��������� ����� ��� ����������� ������. ����� ������ ����������� ���������, �����, ���������� �������, ������ ����������� �������� ���������.

����� ���� ��������� �������������� ����� '?' (���� ����� ������) � '*' (����� ����� ����� ��������). ���� ������� ��������� �����, ������ �� ��� (�� ������� ����������) ����� ����������� � ����� ������� �����. �������������� ����� ������ �� �����, ������� ������������� ����� �� ����� ���������� ������, � ��� ���� �� ��������������� �� ����� �� ����� ����������� ������. ��������, ��� ����� *.txt | b* ����� ����������� ������ �����, ������� ���������� .txt, ����� ������� ���������� �� �� ����� 'b'.

���� ���� ����� �����, ����� ������������ ��� ����� � ��������. ����������� ����������� ����� "\" ��������� ���������� ������ ��������.



CopyTree plugin for Total Commander
-----------------------------------
(English section)

Packer plugin for copying files with folder structure:
+ copies/moves folder trees from branch view/search result
+ handy dialog that allows chosing number of duplicated folder levels
+ allows setting up include/exclude masks for files to be proccessed
+ allows displaying choose dialog once or if Win key is down or every time
+ multi-threading support (background operations in TC 7.55 and later)
+ allows copying directory timestamps
+ reports if some files weren't processed
+ full Unicode support


1. Installation and configuration file

You can start plugin installation by entering its archive within TC. In order to install it manually you should extract archive contents to some folder, open Configuration - Plugins - Configure packer plugins, choose an extension for plugin and then specify path to plugin file. It is recommended to use extension CopyTree (it will be displayed in the Pack dialog's list of packer plugins).

Total Commander passes INI file name on plugin loading. If not (e.g. TC version is earlier than 5.51) or if INI with plugin's name exists near the plugin, this file will be used as configuration file. File encoding may be ANSI or Unicode - you may change it manually using any text editor.

Parameters in [Copy Tree] section:

	AskOptionsOnWin=1
		Show choose dialog before copying if Win key is down;
	AskOptionsAlways=0
		Show choose dialog before every copying;
	CopyAllTimes=0
		Copy only major (modification) timestamp or all three (also creation and last access ones);
	CopyDirTimeStamp=0
		Copy timestamps of directories;
	MoveEmptyDirs=0
		Delete empty source directories on move;
	DefaultCopyLevel=0
		Allows overriding folder levels to copy. If >0, specifies number of levels to copy (1 - first safe choice, 2 - first safe plus one level etc.), if <0 - number of levels from root folder to skip (-1 - full path with drive letter, -2 - full path w/o drive letter etc.). When choose dialog is shown, overrides initial choice. If this parameter is set, it disables mandatory displaying of choose dialog when you copy files from search results panel;
	Language
		Current language file name (just name w/o path and extension).


2. General features and usage

Plugin allows you to keep directory structure relative to desired level when you copy/move files. It is especially useful for branch view (Ctrl+[Shift+]B by default, or "Branch View" command) or search results panel ('Feed to listbox' button in search results dialog). TC copies files in theese modes w/o keeping directory structure, into single directory (TC 8.50+ allow keeping directory structure relative to current directory in case of branch view).

In order to copy/move files with original directory structure you need to select files, open Pack dialog (Alt+F5 by default), choose CopyTree in the list of plugins (name may differ if you've installed plugin manually) and click OK button. You may also click Configure button to change some plugin options (also it has "Reload" button that allows rereading INI after modifying it). Plugin will show choose dialog depending on situation and configuration.

When you click "Cancel" in pack progress dialog, TC doesn't allow you to undo aborting. However CT supports such feature, but due to TC limitations it is possible to abort operation by clicking Cancel button only once, next time you will need to press Escape key to display abort dialog. The reason is that module ignores continuous TC notifications about cancelling after first Cancel clicking.

When copy directory timestamps and/or delete empty source directories options are enabled, there is a postprocessing phase for the directories the files were copied from during actual copying phase. Two tasks may be performed in this phase depending on operation and options: timestamps copying (for folders that are duplicated in the destination folder) and empty source directories deletion (for dirs that become empty after moving out files or deleting empty subdirs).

Plugin shows list of files that weren't processed successfully when operation is complete.


3. Choose folder level dialog

Dialog may be shown immediately before starting copy process. If you copy files from search results panel (and parameter DefaultCopyLevel is not set), dialog is shown always, in other cases - depending on plugin settings. This dialog allows changing destination path, number of folder levels to duplicate and masks of files to be processed and/or skipped.


3.1 Destination folder selection

When you open Pack dialog, TC suggests target panel's path as destination folder. Plugin shows same path in choose dialog so you can change it if you need.


3.2 Folder levels selection

Dialog shows a number of choices for the first file to be processed. Choices include just filename, parent folder name and file name, grangparent and parent folder names and filename etc. E.g. for file C:\Windows\System32\write.exe you will see following choices: write.exe, System32\write.exe, Windows\System32\write.exe and C\Windows\System32\write.exe. Depending on your choice plugin will create corresponding folder structure in a destination folder.

Left part of source file path to be cut is called base folder, it must be the same for all selected files. Plugin shows an exclamation mark for choices that don't meet this rule. E.g. you copy files C:\Windows\System32\write.exe and C:\Windows\explorer.exe from search results panel, choice write.exe will be marked with '!' because it corresponds to base folder C:\Windows\System32 which doesn't contain the second file. If you choose such variant, plugin will skip every file that can't be copied and warn you.

When you copy from branch view, default variant corresponds to current active panel's path. E.g. if you enable branch view in folder C:\Windows and then select file C:\Windows\System32\write.exe, plugin will suggest you variant System32\write.exe.

When you copy from search results panel, current active panel's path is undetermined, so plugin suggests the first variant w/o '!' mark.


3.3 Setting up masks of files to include/exclude

Field "Only files of this type" works in same way as regular TC's field (TC search templates aren't supported though). You can specify one or more inclusion masks for files to be processed and then after '|' symbol you can specify one or more exclusion masks of files to be excluded. Masks are separated with spaces, masks containing spaces should be double-quoted.

Masks may contain wildcards '?' (any character, exactly one) and '*' (any number of any characters). When multiple masks specified, every mask (until first match) is applied to each filename. Only files that match one of inclusion masks and don't match any of exclusion masks are processed. E.g. if you use mask *.txt | b*, all files with extension .txt are processed except ones whose names begin with letter 'b'.

If you leave empty mask field, all files and folders will be processed. Special exclude mask "\" allows you to skip empty folders.



History:

2015-11-25	1.3.0.304
	* fixed working with UNC paths (broken in 1.3.0.296)
	* fixed long path support for copy timestamps stack

2015-10-03	1.3.0.296
	+ paths with up to 1024 characters are supported now
	+ error codes are displayed in unprocessed files list
	* removed TC error message on cancelling operation in choose dialog
	* do not omit backslash when target is root dir

2015-01-16	1.2.5.276
	+ option to copy all three timestamps (disabled by default)

2014-05-06	1.2.4.264
	+ option to delete empty source dirs on move
	* copying timestamps on move too
	* copying timestamps for existing target dirs too
	* wrong tab order in configure dialog
	* new and new timestamp issues

2013-09-16	1.2.3.232
	* drive letter folder got wrong timestamp
	* fixed progress bar in case of moving within the same volume
	* some localization fixes

2013-08-08	1.2.2.204
	* improved duplicate used file mask check
	* fixed copying timestamps of directories in case of max level (with drive letter)
	* fixed some network path issues
	* fixed copy error in Windows 2000 (broken in 1.2.1.192)

2012-12-06	1.2.1.192
	+ option to copy timestamps of directories
	+ copies encrypted files to target that doesn't support encryption (moving is still not allowed)
	* now empty folders are copied by default (as TC does; use exclude mask "\" to get rid of them)

2012-09-16	1.1.2.134
	+ remember 20 last used file masks
	* removed choose dialog icon
	* removed test string L"Bla-bla-bla-bla-bla" from code :)
	* fixed percentage progress for skipped files (it should grow anyway)

2012-07-22	1.1.1.120
	+ added parameter DefaultChoiceIndex to override choice auto-detection
	+ parameter DefaultChoiceIndex replaced with DefaultCopyLevel that works w/o dialog too
	+ load INI settings button in configuration dialog
	+ resizeable choose dialog
	+ choose dialog remembers its size
	* removed unwanted import from MVCR100.DLL in 64-bit version
	* hung when trying to copy empty dir
	* overwrite read-only files

2012-07-14	1.1.0.96
	+ special mask "\" allows copying empty folders (if no other masks specified, only empty folders will be copied)
	+ displays exclamation mark for bad levels (that don't allow copying all selected items) in a list, suggests largest possible (when called from search results)
	+ shows an error if item path has incorrect base path to be skipped due to bad choosen level
	+ shows a warning if not all files were copied
	* fixed background operation window detection before displaying abort dialog
	* first file used in choose dialog again

2012-07-08	1.0.1.50
	+ added language file support for translation
	* file with minimal level used in choose dialog instead of the first one

2012-05-16	1.0.0.34
	+ added move support
	+ added 'Only files of this type' feature
	* improved confirmation dialog centering

2012-05-15	1.0.0.16
	! first working version
	+ user-friendly choose dialog that may be displayed automatically
	+ overwrite confirmation dialog
