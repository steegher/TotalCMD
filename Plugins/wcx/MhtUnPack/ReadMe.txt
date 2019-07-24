MhtUnPack wcx and wdx plug-in version 2.2

This is a Total Commander plugin that allows to extract resources stored in Microsoft's MHT files.

 -- = = Capability = = --
 - Decode quoted-printable, base64, 8bit, 7bit, binary, uuencode
 - Open file create with brouser IE, Opera, etc.
 - Open file create with mailer (*.msg)
 - Open *.b64, *.uue, *.xxe file 
 - Handling name in KOI8-R, UTF-8, UTF-7
 - Decode name from quoted-printable, base64
 - Delete file from archive
 - Pack file to archive
 - Search in unpack files
 - Wdx-functional

 -- = = Installation = = --
1. Copy "MhtUnPack.wcx" into "TotalCommander \ Plugins" directory.
2. Go to Configuration -> Options... -> Packer -> Additional packers -> Configure packer extension WCX's
3. Enter "mht" into the edit box
4. Press "New type", browse for plugin, then press "Open"
5. Press all "OK" buttons
6. Go to Configuration -> Options... -> Packer -> Additional packers -> Configure packer extension WDX's
7. Press all "OK" buttons

This plugin is compatible with TC's automatic installation procedure. 

 -- = = Changes history = = -- 
 v 2.2 - 28.04.2018
+ Bug fixed

 v 2.1 - 09.09.2016
+ Support long quoted-printable names

 v 2.0 - 01.06.2015
+ Decode quoted-printable content, if there are space in end of line
+ Wdx. Opened file's cashe
+ Wdx. Delayed ELEMENTS colums

 v 1.9.3 - 16.04.2015
+ Decode name's string with several coding
+ Optimize speed open file

 v 1.9.2 - 10.04.2015
+ Content-Location from first item, when not found headers Content-Location
+ Speed optimization

 v 1.9.1 - 17.10.2013
+ Decode quoted-printable names from Content-Location
+ Delete illegal char from item names
 
 v 1.9 - 15.03.2013
+ Decode xxencode
+ Open xxe file

 v 1.8 - 14.03.2013
+ Support iso-2022, ISO_8859_5 encoding
* Fixed in wdx mode for field "Subject" swowing special char 
+ In wdx mode add fields "Date", "From"
* Fixed bag for deleting and packing files
* Fixed problem with some msg-files

 v 1.7.1 - 13.03.2013
+ Fixed deleting files
 
 v 1.7 - 12.03.2013
+ Date unpacked files is equal to date mht-file
+ Files are opened for editing with the correct access

 v 1.6 - 06.03.2013
+ Fixed problem with quoted-printable content.

 v 1.5 - 22.01.2013
+ Supported Wdx-functional. Fields: "Content-Location",	"Subject", "Elements". 
Fields "Elements" process slow.
 
 v 1.1.1 - 13.10.2011
+ Fixed error handling uue files
  
 v 1.1.0 - 13.10.2011
+ 64-bit plugin version
* Removed convert the contents items to ANSI

 v 1.0.1 - 06.07.2009
+ Support old version

 v 1.0.0 - 04.07.2009
+ Unicode file names support

 v 0.4.4 - 30.12.2008
+ Fixed problem with decode long name
+ Decode b64 file without header

 v 0.4.3 - 24.12.2008
+ Fixed problem with zero simbol in header
 
 v 0.4.2 - 10.10.2008
+ If block haven't ext, would be use ext from Content-Type

 v 0.4.1 - 22.09.2008
+ Fixed problem parsing file with alternative and relative boundary
+ Decode filename from URL

 v 0.4.0 - 10.06.2008  
+ Decode uuencode
+ Open uue file
+ Decode item UTF-7 to ansi

 v 0.3.7 - 10.06.2008
+ Fixed bug quoted-printable decode when string ending =
+ Fixed item name decode with unknown coding

 v 0.3.6 - 15.05.2008
+ Fixed bugs finding item with doubling name
 
 v 0.3.5 - 14.04.2008 
+ Add to dubling name number copy (early this name was also noname00, also item witn out name )

 v 0.3.4 - 14.04.2008 
+ Fixed bugs

 v 0.3.3 - 10.04.2008 
+ Decode item UTF-8 to ansi
+ Handling mail with references
 
 v 0.3.2 - 09.04.2008 
+ Handling e-mail with only one item
+ Fixed error finding boundary
+ Improve finding name item's 

 v 0.3.1 - 07.04.2008 
+ Set flag search in unpack files

 v 0.3 - 04.04.2008 
+ Rewirte begin items detection
+ Increase psrsing speed
+ Open defective mht-file (with '\0')
 
 v 0.2.4 - 03.04.2008 
+ Fixed bag open specific file
+ Fixed decode quoted-printable (correct handling \r\n)

 v 0.2.3 - 02.04.2008 
+ Try to get name no_name unit from Content-Id
 
 v 0.2.2 - 19.11.2007 
+ Handling file no mht-type

 v 0.2.1 - 29.10.2007 
+ Handling many mime type
+ Open file one boundary with many units
+ Fixed problem with file default name

 v 0.2 - 17.10.2007 
+ Pack set file to archive
+ Delete file afte pack, if process move file

 v 0.1 - 10.10.2007 
+ Pack file to archive (one at time)

 v 0.0.6.1 - 04.10.2007
+ Delete set file from archive at once
  
 v 0.0.6 - 03.10.2007   
+ Delete file from archive
+ Decode name from UTF-8

 v 0.0.5.3 - 02.10.2007
+ Open *.b64 file 

 v 0.0.5.2 - 01.10.2007
+ Handling file one boundary

 v 0.0.5.1 - 26.09.2007
+ Fixed memory leaked for lange filename 

 v 0.0.5 - 20.09.2007
+ Set default name (fild Subject mht file) for items one name
+ Decode KOI8-R 
+ Improve speed 

 v 0.0.4.1 - 19.09.2007
+ Fixed bug in nandling free unit inside file
+ Fixed bug extract unit from file one boundary in the end

 v 0.0.4 - 18.09.2007
+ Handling unit whith doubling name (format another name - no_name00.ext)

 v 0.0.3 - 17.09.2007
+ Handling free unit inside file

 v 0.0.2 - 05.09.2007
+ Show source with out name (format - no_name00.ext)
+ Open file create with mailer(*.eml, *.msg)
 
 v 0.0.1 - 04.09.2007
+ Decode quoted-printable
+ Show file time
+ Show realy file size 

 v 0.0.0.1 - 03.09.2007
! First release 

 -- = = Author = = --
Afonin Alexander (prog_san)    e-mail:<mhtunpack@mail.ru>