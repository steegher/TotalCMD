SQLiteViewer 2.6

Simple plugin for TC for view SQLite3 database files. Supports *.db, *.db3, *.sqlite, *.sqlite3 and *.fossil extensions.

Supports up to 2TB files, no sqlite3.dll needed.
Supports data types described in this document:
http://www.sqlite.org/datatype3.html

About auto creating any additional files when some database viewing (and open these databases from read-only sources):
http://www.sqlite.org/tempfiles.html#walfile
http://www.sqlite.org/wal.html

Detect string can be changed for open any SQlite3 database files:
MULTIMEDIA&([0]="S"&[1]="Q"&[2]="L"&[3]="i"&[4]="t"&[5]="e"&[6]=" "&[7]="f"&[8]="o"&[9]="r"&[10]="m"&[11]="a"&[12]="t"&[13]=" "&[14]="3")

Notes.
Sorting by headers click call new selection from database.
Set limit for returned records is recommended. PacketRecords (in ini) or/and UseRowLimit (in Setup/ini).


License agreement
This software provided "AS-IS" without warranty of any kind for non-commercial use only.


Changes history

Ver 1.0:
 * public release.

Ver 1.5:
 * more SQLite database files support;
 + new DetectString extension: sqlite (reinstall plugin or add it manually);
 * bug fixes.

Ver 1.6:
 + columns autosize when open table (check limit to 1000 records for speed purposes);
 + column autosize by double click on columns divider;
 + sort by column header clicking;
 + table info;
 * other fixes.

Ver 1.6.1:
 * some UI changes;
 * other fixes.

Ver 1.6.2:
 + current record can be copied to Clipboard as CRLF separated strings.

Ver 1.7:
 + some BLOB fields displayed as string now;
 + tables list panel can be displayed (switch on in ini);
 + SQLiteViewer.ini for manual setup:
   [SQLiteViewer]
   ShowTablesPanel=0 - on/off tables panel (default 0)
   BlobAsText=1 - on/off BLOB fields as text (default 1)
   BlobAsTextLimit=150 - characters limit for BLOB as text (20..255, default 150);
 * other fixes.

Ver 1.7.5:
 + SQLiteViewer.ini for manual setup:
   [SQLiteViewer]
   FixDrawErrors=1 - in some cases remove flickering
   FixScrollError=0 - do not go to first column when scroll using thumb
   FixDrawScrollError=0 - when FixScrollError=1 in some cases remove flickering (on old PC is slow)
   GridOddRowOtherColor=1 - use other color for odd row
   GridOddRowColor=$00F4F4F4 - color of odd row;

Ver 1.7.6:
 * may be used standard lsplugin.ini for read settings.

Ver 1.8:
 * updated database engine;
 * database opens as read only now (PRAGMA query_only);
 * fixed show tables with spaces in name;
 + double click on grid row opens Record View window;
 * BlobAsTextLimit may be increased up to 2000 characters (20..2000, default 150);
 + SQLiteViewer.ini for manual setup:
   [SQLiteViewer]
   ShowTablesCombobox=1 - on/off tables combobox (default 1)
   StringLengthLimit=255 - characters limit for string (20..2000, default 255)
  ! Warning. After set up limit for Blob and string bases with huge records may not be opened by out of memory.
   SkipSystemTables=0 - don't add to list tables whose names starts from "sqlite_" (default 0);
 * other fixes.

Ver 1.8.1:
 * other fixes.

Ver 1.8.2:
 * updated database engine;
 * plugin recompiled in Delphi XE4 for stability issues on x64 versions of Windows;
 + show table info in SQL format;
 * wrong sorting when right click on grid header and next any inside;
 * other fixes.

Ver 1.8.3:
 * updated database engine;
 + support tables created with "WITHOUT ROWID" phrase (https://www.sqlite.org/withoutrowid.html).

Ver 1.8.4:
 * updated database engine;
 + new DetectString extensions: sqlite3 and fossil (reinstall plugin or add it manually).

Ver 1.8.5:
 * updated database engine;
 + simple filter using LIKE for all fields, standard TC Lister search dialog (without options) (F7).

Ver 1.8.6:
 * updated database engine;
 * now filter for unicode words supports case insensitive and can use options from standard TC Lister search dialog (F7);
 + simple filter dialog.

Ver 1.8.7:
 * updated database engine;
 + filter options Not Contain and Just Not Empty.

Ver 1.9.0:
 * updated database engine;
 + add support for VIEW's.
 + SQLiteViewer.ini for manual setup:
   [SQLiteViewer]
   AddVIEWs=1 - add VIEW's to the table list (default 1)
 + Setup dialog (menu item Setup...);
 * other fixes.

Ver 1.9.1:
 * updated database engine;
 + show current record number (need enable in Setup dialog).
 * other fixes.

Ver 1.9.2:
 * updated database engine;
 + SQLiteViewer.ini for manual setup:
   [SQLiteViewer]
   DatabaseReadOnly=1 - open database in read only mode (default 1);
 * other fixes.

Ver 1.9.3:
 * behavior of TAB button fixed in TC x64;
 + SQLiteViewer.ini for manual setup:
   [SQLiteViewer]
   SpecialCheckQuery=0 - if database opened in read/write mode (DatabaseReadOnly=0) and query not start from 'select' then reopen table or database after query (default 0).

Ver 1.9.5:
 * updated database engine;
 + SQLiteViewer.ini for manual setup:
   [SQLiteViewer]
   FixDateTimeField=1 - try properly show DATETIME fields (default 1).

Ver 1.9.6:
 * updated database engine;
 + allow delete current record (if database opened in read/write mode (DatabaseReadOnly=0)).

Ver 1.9.6.1:
 * updated database engine;
 + sort tables names (view's names sort separately).

Ver 1.9.6.2:
 * strings sorting fixed.

Ver 1.9.6.3:
 * updated database engine;
 * other fixes.

Ver 1.9.6.4:
 * other fixes.

Ver 1.9.6.5:
 + row count limit when load table (enabled in Setup);
 * other fixes.

Ver 1.9.6.6:
 * BlobAsTextLimit may be increased up to 20000 characters (20..20000, default 150). Not recommended set big values!;
 * StringLengthLimit may be increased up to 20000 characters (20..2000, default 255). Not recommended set big values!;
 * small memory leak fixed.

Ver 1.9.6.7:
 + SQLiteViewer.ini for manual setup:
   [SQLiteViewer]
   FontName= - font name,
   FontSize= - font size;
 * other fixes.

Ver 2.0:
 * changes behavior of get and show text from text/memo/blob fields;
 * main grid changed;
 * FixDateTimeField=1 additional try recognize date/time for DATE fields and REAL format;
 + sort on several column clicking with hold Ctrl key (sorting can be removed with Ctrl key also);
 + several lines for records in grid; 
 + panel for preview text/images for selected cell (text additional is UTF8 checked);
 + simple dialog for search by Ctrl-F (next continue search by F3);
 + SQLiteViewer.ini for manual setup:
   [SQLiteViewer]
   CreateFakeFTS=0 - create FTS and ICU tokens when database is open (only for hide errors when some table opens, other errors can occur!);
 * other fixes.
 
Ver 2.1:
 * sorting with Ctrl key now starts after release Ctrl;
 + SQLiteViewer.ini for manual setup:
   [SQLiteViewer]
   GetAllRecordsCount=0 - calculate records count;
   GetAllRecordsCountForce=0 - force calculate records count in table;
   PacketRecords=-1 - load data by packets (512 or 1024 is recommended minimum);
   AskGotoEnd=1 - ask go to last record by Ctrl-End when PacketRecords enabled (work only when GetAllRecordsCountN enabled);
   ShowSearchPanel=0 - show search panel;
   AllowSearchPanel=0 - allow show search panel by pressing Ctrl-Shift-F;
   DrawMultilineTextAsEditControl=0 - force wrap multi line text (draw glitches can occurs);
   CheckFieldIsURL=0 - check field is URL (first record check, http:// or https://) on load table;
   FixDateTimeFieldDefault=0 - by default date/time fields will be represents as text;
   PreviewRTF=0 - RTF preview;
   PreviewDBGraphic=0 - check special header on graphic preview (Paradox graphic BLOB);
   PreviewJPEGScale=1 - prefer JPEG size preview for load speed up (0 - as is, 1 - screen size, 2 - half screen, 3 - 1/4 screen, 5 - 1/8 screen);
 * other fixes.

Ver 2.1.1:
 * changed odd and even rows draw (in Setup);
 * in Record View window TMemo replaced on TRichEdit;
 + SQLiteViewer.ini for manual setup:
   [SQLiteViewer]
   * AskGotoEnd=2 - ask go to last record by Ctrl-End when PacketRecords enabled regardless GetAllRecordsCountN enabled or not;
   OldGetData=0 - get text data from tables as in 1.x versions (present in Setup dialog);
   GridContrastLines=0 - contrasting separating lines in grid when non Classic Windows theme enabled (present in Setup dialog);
   GridHorizontalLines=1 - horizontal separating lines on/off (present in Setup dialog);
   DrawNullText=0 - text (null) in empty cells (present in Setup dialog);
   GridColor= - grid color (system Window color by default);
   GridDrawFocusRect=1 - focus rectangle in active selected cell (present in Setup dialog);
   GridRowHighlight=1 - full grid row highlight (present in Setup dialog);
 * other fixes.

Ver 2.1.1.1:
 * fixed draw up and bottom panels when Classic Windows theme enabled;
 + SQLiteViewer.ini for manual setup:
   [SQLiteViewer]
   * SkipSystemTables=1 - by default now system tables not added to the tables list;
   AddMasterTable=0 - add sqlite_master table when SkipSystemTables is off;
 * other fixes.

Ver 2.2 Beta:
 * updated database engine;
 * databases now opens in real read only mode (not just execute "PRAGMA query_only") (DatabaseReadOnly=1 in ini);
 + simple export to csv, xlsx, html, rtf;
 + SQL syntax highlight on 'SQL' page in Table Info dialog;
 + view next/previous record in Record View window;
 * other fixes.
 
Ver 2.2.1:
 * when CreateFakeFTS=1 now create additional token FTS5 and module csv;
 * other fixes.

Ver 2.3:
 * updated database engine (3.23.1);
 * other fixes.

Ver 2.4 Beta:
 * fixes and improvements for records deleting;
 + column filter by Alt-Click on cell with data, cancel filter - Alt-Click on same data in any cell or from menu (not compatible with Search panel filter);
 + SQLiteViewer.ini for manual setup:
   [SQLiteViewer]
   AllowColumnFilter=1 - allow column filter by Alt-Click on cell;
   ExportCsvCommaSeparated=0 - comma is delimiter when export to CSV;
   ExportCsvTitle=1 - export title (header) to CSV;
   ProcessMalformedTables=0 - open malformed tables (errors may occurs!);
   OpenEmptyDatabase=0 - open database without tables (only when SkipSystemTables=0 and AddMasterTable=1);
 * other fixes.

Ver 2.4.1 Beta:
 * errors fix.

Ver 2.4.2 Beta:
 * changed behavior of get data from some fields e.g. BLOB;
 + SQLiteViewer.ini for manual setup:
   [SQLiteViewer]
   * CheckFieldIsURL=0 - now is first x records processed (0-20) for count field as URL (http:// or https://) when table loaded;
   * FixDateTimeField=1 - try properly show DATETIME, DATE, TIME, TIMESTAMP fields: 2 - extended checks, 3 - as text (default 1);
 * other fixes.

Ver 2.4.3 Beta:
 + SQLiteViewer.ini for manual setup:
   [SQLiteViewer]
   EmptyDefinedType=0 - data type for empty field declaration: 0 - auto, 1 - text, 2 - Blob (present in Setup dialog);
   PreviewTextBlobConvert=0 - additional data convert from Blob to text (present in Setup dialog);
   PreviewTextBlobConvertMaxLen= - max size of data to text convert from Blob (-1 - without limits) (present in Setup dialog);
 * other fixes.

Ver 2.4.3.1:
 * other fixes.

Ver 2.5:
 * updated database engine (3.26.0);
 * other fixes.

Ver 2.6:
 * updated database engine (3.27.2).


---
Suggestions, Wishes and bug reports are welcome!
ProgMan13, (ProgMan13@mail.ru)