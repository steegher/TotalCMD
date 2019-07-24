MediaInfoWDX V2.01

I write this plugin because I can't find any 64bit media content plugin.  
MediaInfo has very good dll on it, so I just write a very simple plugin
to connect to mediainfo to pull the info.


Installation:
1. Install the plugin as other content plugin.
2. Go to https://mediaarea.net/en/MediaInfo/Download/Windows
   Download DLL version of MediaInfo.  
   Put the MediaInfo.Dll into plugin folder or any searchable folder.
   For x64 system, rename MediaInfo.Dll to MediaInfo64.Dll and put it into plugin folder or any searchable folder.

Folder structure
MediaInfoWDX
|- MediaInfoWDX.wdx
|- MediaInfoWDX.wdx64
|- Fields.cfg
|- MediaInfo.dll
|- MediaInfo64.dll
|- pluginst.inf
|- Readme.txt

Copyright
MediaInfo: (LGPLv2+ license) please see http://mediainfo.sourceforge.net/en.  
MediaInfoWDX (c) Chao Liu

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.


Format of Fields.txt

First Line:  Total number of fields followed by delimiter character, no space in between
    then version number of supported field file, then delimiter character
    then N, n, T, or t, then delimiter character
    then 1 or 0 with paths separated by semicolon(;). This is useful for network folders.
	1 for exclude paths
	0 for include paths only
	Ex: 1D:\;E:\ - media files in D:\ or E:\ and their subfolders will be excluded from loading the plugin,
	    0C:\ - plugin is loaded only for media files in C:\ 
Second Line: Header
Third Line and the rest: Field Lines, one field per line.  The line order will be shown in TC in the same order.  
                         Each line has eight columns. Each one separated by defined delimiter character.
                         They must in this order

show	stream_t	stream_number	kind	info_text	info_name	fieldtypes	fieldflag	sortorder	FieldName	fieldunit

show: 0 or 1, 0 skipped, will not displayed.  1 will be parsed the line.
stream_t: Kind of stream.  The code from MediaInfo. Please see MediaInfo doc for more info.  The plugin passes them to MediaInfo.dll to get values.
stream_number: Stream number in Kind of stream, start from 0
kind: N for name, T for code, Cap has higher precedence. N should be used.  T does not consist from versions.
info_text: The code from MediaInfo. Please see MediaInfo doc for more info.  The plugin passes them to MediaInfo.dll to get values.
info_name: The name from MediaInfo. Please see MediaInfo doc for more info.  The plugin passes them to MediaInfo.dll to get values.
fieldtypes: The field type of field. MediaInfo.dll only return string, so ft_stringw will never fail. 
            Currently, it only support ft_stringw, ft_numeric_64, ft_numeric_floating, ft_datetime
fieldflag: always is 0 for current version.
sortorder: 1 for ascending (a..z, 1..9), or -1 for descending (z..a, 9..0).
FieldName: The field name, it must not contain delimiter character, and . (dot) | (vertical line) : (colon)
fieldunit: The field supported units. The separator is the vertical dash(|)(Alt+0124). 
           As field names, unit names may not contain a vertical dash, a dot, or a colon.
           Currently only support: bps|Kbps|Mbps|KMG, Byte|KByte|MByte|GByte|KiB|MiB|GiB|KMG, 
           ms|h:mm:ss|h:mm:ss.fff|m:ss.fff|h' h 'mm' m 'ss' s', limited on others

Example 1: Tab delimiter and show first and last fields
2	2.00	T	1D:\;E:\
show	stream_t	stream_number	kind	info_text	info_name	fieldtypes	fieldflag	sortorder	Name-Display	fieldunit
1	0	0	T	132	Album	ft_stringw	0	1	Album_General	
0	1	0	t	114	Width	ft_numeric_64	0	1	Width_Video	pixel
0	1	0	N	120	Height	ft_numeric_64	0	1	Height_Video	pixel
1	0	0	n	82	Duration	ft_numeric_64	0	1	Duration_General	ms|h:mm:ss|h:mm:ss.fff|m:ss.fff|h' h 'mm' m 'ss' s'


Example 2: comma delimiter and show last two fields
2,2,N,0C:\;D:\
show,stream_t,stream_number,kind,info_text,info_name,fieldtypes,fieldflag,sortorder,Name-Display,fieldunit
0,0,0,T,132,Album,ft_stringw,0,1,Album	General,
1,1,0,t,114,Width,ft_numeric_64,0,1,Width	Video,pixel
1,1,0,N,120,Height,ft_numeric_64,0,1,Height	Video,pixel

Example 1: Tab delimiter and show first and last fields
2	2.00	t	
show	stream_t	stream_number	kind	info_text	info_name	fieldtypes	fieldflag	sortorder	Name-Display	fieldunit
1	0	0	T	132	Album	ft_stringw	0	1	Album_General	
0	1	0	t	114	Width	ft_numeric_64	0	1	Width_Video	pixel
0	1	0	N	120	Height	ft_numeric_64	0	1	Height_Video	pixel
1	0	0	n	82	Duration	ft_numeric_64	0	1	Duration_General	ms|h:mm:ss|h:mm:ss.fff|m:ss.fff|h' h 'mm' m 'ss' s'

For easy way, just change included Fields.txt.  Update the total number of fields and the first character of each field line.
Excel is a useful tool for this file.  Save it in TAB or CSV with .cfg extension.


Version:
version 2.01
Keep MediaInfo open, until it's going to open a different file. 
It increases the speed a lot, but there is an bug, which it crashes occasionally.
Move running configuration file to the same folder of wincmd.ini and name it to MediaInfoWDX.cfg.
If the MediaInfoWDX.cfg is not found, then make a copy of Field.cfg.
Add version number to the first line of configuration file
Bug fixed

version 1.11
Add stream number column to Fields.txt
Stream number is default to 0 only. For other stream, please add accordingly.
For example, the first line below is to get the bit rate in stream 1, 2nd line is the bit rate in stream 2
1	2	0	N	109	BitRate	ft_numeric_64	0	1	BitRate_Audio	bps|Kbps|Mbps|KMG
1	2	1	N	109	BitRate	ft_numeric_64	0	1	BitRate_Audio2	bps|Kbps|Mbps|KMG

version 1.10
Bug fixed

version 1.09
Bug fixed

version 1.08
Bug fixed

version 1.07
Bug fixed

version 1.06
Bug fixed

version 1.05
Bug fixed

version 1.01
Bug fixed

version 1.00
change Field.txt format, not compatible with 0.06
Please back up your old plugin first, in case having problem with the new one.
This version have a better compatibility with future version of MediaInfo.dll
It query info by field name. so it will be slower then by using code number.

version 0.06
add exclude or include paths
add support MediaInfo64.Dll

version 0.05
Change the format of Field.txt.

version 0.04
Add Field.txt, the field definition file.

version 0.02
Fixed unable to load MediaInfo.dll.

version 0.01
The initial version
It doesn't support all info from MediaInfo.