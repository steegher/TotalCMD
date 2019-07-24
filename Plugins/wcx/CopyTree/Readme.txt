CopyTree plugin for Total Commander
-----------------------------------
(English section is below)

Архиваторный модуль для копирования файлов с сохранением структуры:
+ копирование/перемещение файлов из плоского режима (branch view) и результатов поиска
+ диалог выбора числа дублируемых уровней каталогов с отображением относительного пути для каждого варианта
+ возможность задать набор масок файлов для включения/исключения
+ возможность показа диалога однократно, при зажатой клавише Win или каждый раз
+ поддержка многопоточности (фоновые операции в ТК 7.55 и более поздних)
+ возможность копирования временных меток каталогов
+ сообщает, если не все файлы были обработаны
+ полная поддержка Юникода


1. Установка и файл конфигурации

Для установки модуля войдите в архив дистрибутива, ТК должен сам спросить, хотите ли вы установить его. Чтобы установить модуль вручную, извлеките архив в какую-нибудь папку, затем в диалоге конфигурации архиваторных плагинов выберите расширение, которое нужно ассоциировать с модулем, а затем укажите путь к модулю. Рекомендуется указывать расширение CopyTree (оно будет отображаться в списке модулей диалога упаковки файлов).

Путь к файлу конфигурации ТК сообщает модулю при инициализации. Если этого не было сделано (например, версия программы ниже 5.51) или существует INI файл с именем модуля в его папке, этот файл будет использоваться как файл конфигурации. Кодировка файла может быть как ANSI, так и Юникод - ее можно изменить, пересохранив файл в любом текстовом редакторе.

Параметры секции [Copy Tree]:

	AskOptionsOnWin=1
		Показывать окно выбора глубины перед копированием, если зажата клавиша Win;
	AskOptionsAlways=0
		Показывать окно выбора глубины перед каждым копированием;
	CopyAllTimes=0
		Копировать только основную временную метку (модификации) или все три (также создания и последнего доступа);
	CopyDirTimeStamp=0
		Копировать временные метки каталогов;
	MoveEmptyDirs=0
		Удалять исходные пустые каталоги при перемещении;
	DefaultCopyLevel=0
		Позволяет переопределять глубину каталогов. Если >0, указывает число уровней, которые нужно скопировать (1 - первый безопасный вариант, 2 - плюс ещё один уровень, и т.д.), если <0 - число уровней от корневого каталога, которые нужно пропустить (-1 - полный путь с буквой диска, -2 - полный путь без буквы диска и т.д.). При показе диалога выбора глубины влияет на номер предлагаемого варианта. Установка параметра отключает обязательное отображение диалога выбора глубины при копировании из результатов поиска;
	Language
		Имя выбранного файла языка сообщений (без пути и расширения).


2. Общие возможности и использование

Модуль позволяет сохранять иерархию каталогов при копировании или перемещении файлов относительно выбранного уровня. Это особенно полезно в плоском режиме (по умолчанию Ctrl+[Shift+]B; в официальной русской локализации команда "Показать все файлы без подкаталогов") и из панели результатов поиска (в официальной русской локализации кнопка "Файлы на панель" в диалоге результатов поиска). При обычном копировании в этих режимах ТК сваливает все файлы в одну кучу (в ТК 8.50 появилась опция сохранения иерархии относительно текущего каталога в плоском режиме).

Для копирования файлов с сохранением исходной иерархии каталогов нужно выделить эти файлы, открыть диалог упаковки файлов (по умолчанию Alt+F5), в списке доступных модулей выбрать CopyTree (если модуль устанавливался вручную, расширение может быть другим) и нажать ОК. При необходимости будет показан диалог выбора глубины. Кнопка Настройка открывает диалог настройки, позволяющий изменить параметры отображения диалога выбора и т.п. (также диалог содержит кнопку "Перечитать", позволяющую перечитать файл конфигурации с диска после его редактирования).

При нажатии кнопки "Отмена" в окне прогресса операции ТК не позволяет отменить прерывание. Данная возможность реализована в CT, при этом в силу особенностей ТК второй раз прервать операцию нажатием той же кнопки Отмена нельзя, для повторного отображения диалога прерывания операции необходимо нажать клавишу Esc.

Если включены опции копирования временных меток каталогов и/или удаления пустых исходных каталогов, после завершения этапа копирования файлов выполняется этап постобработки каталогов, файлы из которых были скопированы. На этом этапе в зависимости от операции и выбранных опций выполняются копирование временных меток каталогов (для каталогов, дублируемых в папке назначения) и удаление пустых исходных каталогов (каталогов, которые стали пустыми после переноса файлов из них в папки назначения и удаления пустых подпапок).

По завершении копирования/перемещения всех файлов модуль отображает сообщение со списком файлов, которые по какой-либо причине не были обработаны.


3. Диалог выбора глубины каталогов

Диалог может быть показан перед началом процесса копирования выделенных в панели ТК файлов. При копировании из панели результатов поиска (если не задан параметр DefaultCopyLevel) диалог показывается всегда, в остальных случаях - в зависимости от настроек модуля. Диалог позволяет изменить путь назначения, выбрать глубину копируемой структуры каталогов, а также задать набор масок для копируемых и/или пропускаемых файлов.


3.1 Выбор папки назначения

При вызове команды упаковки файлов ТК предлагает создать архив с каким-либо именем в неактивной панели. Модуль отображает путь к папке назначения в диалоге выбора глубины, где его при необходимости можно подкорректировать.


3.2 Выбор глубины каталогов

Диалог отображает список возможных вариантов для первого выделенного файла. Варианты включают только имя файла, имя каталога и имя файла, имена двух родительских каталогов и имя файла и т.д. Например, если первый выделенный файл имеет путь C:\Windows\System32\write.exe, в списке будут представлены варианты write.exe, System32\write.exe, Windows\System32\write.exe и C\Windows\System32\write.exe. Выбор варианта повлияет на то, какая структура каталогов будет создаваться в папке назначения.

Начальная отсекаемая часть пути называется базовым каталогом, и она должна быть общей для всех копируемых файлов. Варианты из списка, в которых базовый каталог не является общим для всех файлов, отмечаются восклицательным знаком. Например, если из окна результатов поиска копируются файлы C:\Windows\System32\write.exe и C:\Windows\explorer.exe, вариант write.exe будет отмечен знаком '!', т.к. при этом базовым каталогом будет C:\Windows\System32, который не содержится в пути ко второму копируемому файлу. В процессе копирования, если выбран вариант со знаком '!', для каждого файла, который не может быть скопирован, будет выдаваться предупреждение о пропуске файла.

При копировании в плоском режиме в диалоге по умолчанию предлагается вариант, отображающий путь к файлу относительно текущего пути панели. Например, если включить плоский режим в папке C:\Windows и выделить файл C:\Windows\System32\write.exe, будет предложен вариант System32\write.exe.

При копировании из панели результатов поиска текущий путь неопределен, поэтому по умолчанию предлагается первый вариант, не отмеченный знаком '!'.


3.3 Указание масок файлов для включения/исключения

Поле "Только файлы типа" работает по тому же принципу, что и соответствующее поле обычного диалога копирования ТК, но без поддержки шаблонов поиска. Можно указать одну или несколько масок для включаемых файлов, затем после символа '|' можно указать одну или несколько масок для исключаемых файлов. Маски должны разделяться пробелами, маски, содержащие пробелы, должны обрамляться двойными кавычками.

Маски могу содержать подстановочные знаки '?' (один любой символ) и '*' (любое число любых символов). Если указано несколько масок, каждая из них (до первого совпадения) будет применяться к имени каждого файла. Обрабатываться будут только те файлы, которые соответствуют одной из масок включаемых файлов, и при этом не соответствующие ни одной из масок исключаемых файлов. Например, при маске *.txt | b* будут скопированы только файлы, имеющие расширение .txt, имена которых начинаются не на букву 'b'.

Если поле масок пусто, будут копироваться все файлы и каталоги. Специальная исключающая маска "\" позволяет пропускать пустые каталоги.



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
