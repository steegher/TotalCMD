ICLView.wlx
v6.7.2019
Free for noncommercial use.

Lister plugin for Total Commander. Show icons in files.
Supported extentions: ico, icl, exe, dll, scr, ocx, bpl, wlx, wfx, wcx, wdx, cpl, acm.

WARNING! Remove previously installed plugin from lister plugins list (it will show icons in ico files using TC 6 or later and new file types too).

Install (TC 5.51 or later):

1. Uninstall previous version of plugin if exist.
2. Select Configuration -> Options... -> Edit/View tab.
3. Press button "Configure internal viewer...".
4. In "Configure Lister" window press button "LS-Plugins". Window "Lister Plugins" will be shown.
5. Press "Add" button and select ICLView.wlx.
6. Press "OK" button in standard File Select Dialog ("Browse" title) and "Lister Plugins" (in next windows you can press "Cancel" if want).

Try use plugin - select *.icl file and press F3, in Lister window select Options -> Image/Multimedia if need.


Small FAQ.

Q. What the items who contains zero icons?
A. This compressed icon (cannot be extrtacted) or icon who contain only valid header without image (can be extracted).
Q. I can't see icons in exe, dll files. What can I do?
A. If started other plugin first then try press button 4 in Lister.
Q. Can I open Stardock Icon Packager icon files (*.ip)?
A. Stardock Icon Packager icon files (*.ip) is zip archives contained *.icl file inside. Enter to *.ip file by pressing Ctrl-PgDown in TC and see (by F3) *.icl file. (Answer by Wuyko WINDOWS).


Translations.

Danish from petermad.
German from deus-ex.
Dutch from Alexei.
Polish from dmocha.


Changes.

 v9.1.2005
 + view *.ico files in TC 6 or later;
 + saving single icons to *.bmp (bpp sets by default!);
 + deleting icons from *.icl files by Del button pressing;
 + all icons may be saved as *.icl;
 * some internal changes.

 v28.1.2005
 + hint about sizes and bpp icons in lib;
 * when save icon from lib by default filename will be set to "number - name.ico";
 * some internal changes.

 v16.4.2005
 * fixed "Out of rersources" bug;
 + new file types added: scr, ocx, bpl, wlx, wfx, wcx, wdx, cpl, acm;
 * some internal changes.

 v18.4.2005
 - hints removed;
 + Editor mode:
  + renaming icons in libraries;
  + adding icons to libraries;
  + rearranging icons in libraries dragging by mouse;
 * some internal changes.

 v4.6.2005
 * fixed automatic rename (manual renaming lost) icons in ICL files when saving;
 * improved support of big icons (Win XP only);
 * DetectString changed to 'MULTIMEDIA & ext="ICL" | ext="ICO" | force';
 * some internal changes.

 v25.9.2005
 * improved sort order of big icons (Win XP only);
 * fix next plugin window focus losing (when button 4 pressed);
 * some internal changes.

 v28.3.2006 Beta
 * max item height is 255 pixels now for best view big (256 x 256) icons;
 + search icons by name in libraries;
 + horisontal scroll bar for big or many icons (note: some draw errors for selected icons);
 + png-compressed icons support;
 + new view mode for libraries;
 + buttons for view next/previous same type files in directory;
 * some changes.

 v22.4.2006
 + view mode is stored now;
 + new thumbnails view options: draw border, draw icon in center of thumb;
 + select thumbnails view sizes: (32x32, 48x48, 96x96 etc.);
 + separetely thumbnails sizes and view mode save for Quick View and Normal view modes;
 + key for plugin setup file "StartMaximized" for maximize Lister window when plugin starts;
 + Select Duplicates function for lib's (compares icons by content and select dup's, ex. if 2 same icons in lib then second of it only will be selected);
 * default View mode for Quick View is thumbnails;
 * thumbnails draw improvements;
 * BPP for compressed icons correctly showed;
 * some changes and improvements.

 v26.6.2006
 * improved draw 1bit icons in thumbnail mode;
 * changed back arrow draw of non-selected items (don't draw it).

 v3.10.2006
 + new menu item "View Icon...";
 + full support of icon transparency and alpha channel when save to PNG.

 v5.5.2009
 + view 16bit icl files in Vista (and possible in Windows 7);
 * fix many icons draw corruptions.

 v21.8.2009
 * Delphi virus fix;
 + save to 32bit icl files;
 + show library is 32 or 16 bit in status bar;
 * height of status bar fix.

 v29.1.2013
 + Unicode filename support;
 + Windows x64 support;
 + show icons for big exe and associated folder icons in TC Thumbnail View mode (ThumbnailsInTC=1 in ini);
 + ability to change background icon colors (Setup... menu item);
 * some changes and improvements.

 v26.8.2013
 * DetectString is changed: MULTIMEDIA & (ext="DLL" | ext="EXE" | ext="ICL" | ext="ICL32" | ext="ICO" | size=0 | force) (reinstall plugin needed);
 * TC thumbnails proportions fixed;
 * speed up TC thumbnail show in some cases;
 * show real file bits (64 bit/32 bit/16 bit);
 * some changes and improvements.

 v23.9.2013
 + open files with long names (256+, only if 8.3 aliases enabled);
 * some internal changes.

 v8.1.2016
 * icon to png save fixed (in 64-bit version); 
 * some internal changes.

 v23.5.2016
 + single icon sorting (changed in Setup dialog);
 + thumbnails text switch off key in setup file "ThumbDrawText", default 1;
 * changes in search function;
 * some internal changes.

 v25.8.2016
 * when save to 32-bit ICL icons start named from 1 now.

 v19.11.2016 Preview
 * fix draw 1 bit non proportional icons;
 * fix save 1 bit icons to png;
 + new thumbnail sizes: (380x380, 512x512, user defined);
 + key in setup file for user defined thumbnail size: "ThumbSizeCustom=160";
 + maximize Lister window when plugin starts option added to Setup dialog;
 + key in setup file for Language: "LanguageFile";
 + key in setup file for antialiasing thumbnails: "ThumbAntialiasing" - only if icon size greater than thumbnail size, with cache;
 * some internal changes.

 v9.12.2016 Preview
 + Language select in Setup dialog;
 * changes and improvements.

 v27.12.2016 Preview
 + keys in setup file for draw text shadow in thumbnails mode: "ThumbDrawTextShadow=1" and "ThumbDrawTextShadowQView=1";
 * some internal changes.

 v7.1.2017 Preview
 + keys in setup file for draw text shadow in main window: "MainDrawTextShadow=1" and "MainDrawTextShadowQView=1";
 * thumbnails antialiasing option will saved now;
 + Danish translation;
 * some internal changes.

 v10.2.2017
 * public version.

 v21.2.2017
 * for tablets popup menu added for status bar;
 + German translation;
 * Danish translation updated.

 v28.5.2017
 * fixed localizations work with different encodings;
 * fixed memory leak when view 16-bit icl files.

 v6.6.2018
 + delete/re-arrange icons in multiicon.

 v14.6.2018
 + Dutch translation;
 * some internal changes.

 v17.6.2018
 + key in setup file for skip errors when read icl: "SkipReadErrors=0".

 v30.10.2018 Beta
 + Ctrl-Left / Ctrl-Right open previous/next file;
 + opened file name in status bar in Quick view.

 v12.3.2019
 * fix reading 16-bit files.

 v15.6.2019
 + single icon view window (for very big icons, menu item 'View Icon...');
 * some internal changes.

 v17.6.2019
 + Editor mode in thumbnails mode (with restrictions);
 * changes and improvements.

 v18.6.2019
 +  keys in setup file for start plugin always in Thumbnails mode: "ForceThumbnails=0" and "ForceThumbnailsQView=0".
 * some internal changes.

 v20.6.2019
 * fixed TC crash when Editor mode enabled in thumbnails mode.

 v21.6.2019 Beta
 * fixed 32-bit TC crash when Editor mode enabled in thumbnails mode.

 v23.6.2019 Beta
 * changes and improvements.

 v30.6.2019
 + Polish translation;
 * fixed 32-bit TC crash when Editor mode enabled in thumbnails mode;
 * changes and improvements.

 v6.7.2019
 * some internal changes.


Initial developer: Pavel (pavel_r2003@mail.ru)

Contact the author:
ProgMan13@mail.ru