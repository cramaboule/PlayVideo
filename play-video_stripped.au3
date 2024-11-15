#Region
#AutoIt3Wrapper_Icon=..\..\au3\AutoItv11.ico
#AutoIt3Wrapper_Res_Comment=Play video full screen vith VLC made by Cramaboule
#AutoIt3Wrapper_Res_Description=Play-video
#AutoIt3Wrapper_Res_Fileversion=1.1.1.1
#AutoIt3Wrapper_Res_ProductVersion=1.1.1.1
#AutoIt3Wrapper_Res_requestedExecutionLevel=asInvoker
#AutoIt3Wrapper_Run_Before=%scriptdir%\..\..\au3\WriteTimestampAndVersion.exe "%in%"
#AutoIt3Wrapper_Run_Tidy=y
#AutoIt3Wrapper_Run_Au3Stripper=y
#Au3Stripper_Parameters=/mo
#EndRegion
#Region
#    Last complie at : 2024/11/15 16:57:52
#EndRegion
Global Const $GUI_EVENT_SINGLE = 0
Global Const $GUI_EVENT_ARRAY = 1
Global Const $GUI_EVENT_NONE = 0
Global Const $GUI_EVENT_CLOSE = -3
Global Const $GUI_EVENT_MINIMIZE = -4
Global Const $GUI_EVENT_RESTORE = -5
Global Const $GUI_EVENT_MAXIMIZE = -6
Global Const $GUI_EVENT_PRIMARYDOWN = -7
Global Const $GUI_EVENT_PRIMARYUP = -8
Global Const $GUI_EVENT_SECONDARYDOWN = -9
Global Const $GUI_EVENT_SECONDARYUP = -10
Global Const $GUI_EVENT_MOUSEMOVE = -11
Global Const $GUI_EVENT_RESIZED = -12
Global Const $GUI_EVENT_DROPPED = -13
Global Const $GUI_RUNDEFMSG = 'GUI_RUNDEFMSG'
Global Const $GUI_AVISTOP = 0
Global Const $GUI_AVISTART = 1
Global Const $GUI_AVICLOSE = 2
Global Const $GUI_CHECKED = 1
Global Const $GUI_INDETERMINATE = 2
Global Const $GUI_UNCHECKED = 4
Global Const $GUI_DROPACCEPTED = 8
Global Const $GUI_NODROPACCEPTED = 4096
Global Const $GUI_ACCEPTFILES = $GUI_DROPACCEPTED
Global Const $GUI_SHOW = 16
Global Const $GUI_HIDE = 32
Global Const $GUI_ENABLE = 64
Global Const $GUI_DISABLE = 128
Global Const $GUI_FOCUS = 256
Global Const $GUI_NOFOCUS = 8192
Global Const $GUI_DEFBUTTON = 512
Global Const $GUI_EXPAND = 1024
Global Const $GUI_ONTOP = 2048
Global Const $GUI_FONTNORMAL = 0
Global Const $GUI_FONTITALIC = 2
Global Const $GUI_FONTUNDER = 4
Global Const $GUI_FONTSTRIKE = 8
Global Const $GUI_DOCKAUTO = 0x0001
Global Const $GUI_DOCKLEFT = 0x0002
Global Const $GUI_DOCKRIGHT = 0x0004
Global Const $GUI_DOCKHCENTER = 0x0008
Global Const $GUI_DOCKTOP = 0x0020
Global Const $GUI_DOCKBOTTOM = 0x0040
Global Const $GUI_DOCKVCENTER = 0x0080
Global Const $GUI_DOCKWIDTH = 0x0100
Global Const $GUI_DOCKHEIGHT = 0x0200
Global Const $GUI_DOCKSIZE = 0x0300
Global Const $GUI_DOCKMENUBAR = 0x0220
Global Const $GUI_DOCKSTATEBAR = 0x0240
Global Const $GUI_DOCKALL = 0x0322
Global Const $GUI_DOCKBORDERS = 0x0066
Global Const $GUI_GR_CLOSE = 1
Global Const $GUI_GR_LINE = 2
Global Const $GUI_GR_BEZIER = 4
Global Const $GUI_GR_MOVE = 6
Global Const $GUI_GR_COLOR = 8
Global Const $GUI_GR_RECT = 10
Global Const $GUI_GR_ELLIPSE = 12
Global Const $GUI_GR_PIE = 14
Global Const $GUI_GR_DOT = 16
Global Const $GUI_GR_PIXEL = 18
Global Const $GUI_GR_HINT = 20
Global Const $GUI_GR_REFRESH = 22
Global Const $GUI_GR_PENSIZE = 24
Global Const $GUI_GR_NOBKCOLOR = -2
Global Const $GUI_BKCOLOR_DEFAULT = -1
Global Const $GUI_BKCOLOR_TRANSPARENT = -2
Global Const $GUI_BKCOLOR_LV_ALTERNATE = 0xFE000000
Global Const $GUI_READ_DEFAULT = 0
Global Const $GUI_READ_EXTENDED = 1
Global Const $GUI_CURSOR_NOOVERRIDE = 0
Global Const $GUI_CURSOR_OVERRIDE = 1
Global Const $GUI_WS_EX_PARENTDRAG = 0x00100000
Global Const $CB_ERR = -1
Global Const $CB_ERRATTRIBUTE = -3
Global Const $CB_ERRREQUIRED = -4
Global Const $CB_ERRSPACE = -2
Global Const $CB_OKAY = 0
Global Const $STATE_SYSTEM_INVISIBLE = 0x8000
Global Const $STATE_SYSTEM_PRESSED = 0x8
Global Const $CBS_AUTOHSCROLL = 0x40
Global Const $CBS_DISABLENOSCROLL = 0x800
Global Const $CBS_DROPDOWN = 0x2
Global Const $CBS_DROPDOWNLIST = 0x3
Global Const $CBS_HASSTRINGS = 0x200
Global Const $CBS_LOWERCASE = 0x4000
Global Const $CBS_NOINTEGRALHEIGHT = 0x400
Global Const $CBS_OEMCONVERT = 0x80
Global Const $CBS_OWNERDRAWFIXED = 0x10
Global Const $CBS_OWNERDRAWVARIABLE = 0x20
Global Const $CBS_SIMPLE = 0x1
Global Const $CBS_SORT = 0x100
Global Const $CBS_UPPERCASE = 0x2000
Global Const $CBM_FIRST = 0x1700
Global Const $CB_ADDSTRING = 0x143
Global Const $CB_DELETESTRING = 0x144
Global Const $CB_DIR = 0x145
Global Const $CB_FINDSTRING = 0x14C
Global Const $CB_FINDSTRINGEXACT = 0x158
Global Const $CB_GETCOMBOBOXINFO = 0x164
Global Const $CB_GETCOUNT = 0x146
Global Const $CB_GETCUEBANNER = ($CBM_FIRST + 4)
Global Const $CB_GETCURSEL = 0x147
Global Const $CB_GETDROPPEDCONTROLRECT = 0x152
Global Const $CB_GETDROPPEDSTATE = 0x157
Global Const $CB_GETDROPPEDWIDTH = 0X15f
Global Const $CB_GETEDITSEL = 0x140
Global Const $CB_GETEXTENDEDUI = 0x156
Global Const $CB_GETHORIZONTALEXTENT = 0x15d
Global Const $CB_GETITEMDATA = 0x150
Global Const $CB_GETITEMHEIGHT = 0x154
Global Const $CB_GETLBTEXT = 0x148
Global Const $CB_GETLBTEXTLEN = 0x149
Global Const $CB_GETLOCALE = 0x15A
Global Const $CB_GETMINVISIBLE = 0x1702
Global Const $CB_GETTOPINDEX = 0x15b
Global Const $CB_INITSTORAGE = 0x161
Global Const $CB_LIMITTEXT = 0x141
Global Const $CB_RESETCONTENT = 0x14B
Global Const $CB_INSERTSTRING = 0x14A
Global Const $CB_SELECTSTRING = 0x14D
Global Const $CB_SETCUEBANNER = ($CBM_FIRST + 3)
Global Const $CB_SETCURSEL = 0x14E
Global Const $CB_SETDROPPEDWIDTH = 0x160
Global Const $CB_SETEDITSEL = 0x142
Global Const $CB_SETEXTENDEDUI = 0x155
Global Const $CB_SETHORIZONTALEXTENT = 0x15e
Global Const $CB_SETITEMDATA = 0x151
Global Const $CB_SETITEMHEIGHT = 0x153
Global Const $CB_SETLOCALE = 0x159
Global Const $CB_SETMINVISIBLE = 0x1701
Global Const $CB_SETTOPINDEX = 0x15c
Global Const $CB_SHOWDROPDOWN = 0x14F
Global Const $CBN_CLOSEUP = 8
Global Const $CBN_DBLCLK = 2
Global Const $CBN_DROPDOWN = 7
Global Const $CBN_EDITCHANGE = 5
Global Const $CBN_EDITUPDATE = 6
Global Const $CBN_ERRSPACE = (-1)
Global Const $CBN_KILLFOCUS = 4
Global Const $CBN_SELCHANGE = 1
Global Const $CBN_SELENDCANCEL = 10
Global Const $CBN_SELENDOK = 9
Global Const $CBN_SETFOCUS = 3
Global Const $CBES_EX_CASESENSITIVE = 0x10
Global Const $CBES_EX_NOEDITIMAGE = 0x1
Global Const $CBES_EX_NOEDITIMAGEINDENT = 0x2
Global Const $CBES_EX_NOSIZELIMIT = 0x8
Global Const $__COMBOBOXCONSTANT_WM_USER = 0X400
Global Const $CBEM_DELETEITEM = $CB_DELETESTRING
Global Const $CBEM_GETCOMBOCONTROL = ($__COMBOBOXCONSTANT_WM_USER + 6)
Global Const $CBEM_GETEDITCONTROL = ($__COMBOBOXCONSTANT_WM_USER + 7)
Global Const $CBEM_GETEXSTYLE = ($__COMBOBOXCONSTANT_WM_USER + 9)
Global Const $CBEM_GETEXTENDEDSTYLE = ($__COMBOBOXCONSTANT_WM_USER + 9)
Global Const $CBEM_GETIMAGELIST = ($__COMBOBOXCONSTANT_WM_USER + 3)
Global Const $CBEM_GETITEMA = ($__COMBOBOXCONSTANT_WM_USER + 4)
Global Const $CBEM_GETITEMW = ($__COMBOBOXCONSTANT_WM_USER + 13)
Global Const $CBEM_GETUNICODEFORMAT = 0x2000 + 6
Global Const $CBEM_HASEDITCHANGED = ($__COMBOBOXCONSTANT_WM_USER + 10)
Global Const $CBEM_INSERTITEMA = ($__COMBOBOXCONSTANT_WM_USER + 1)
Global Const $CBEM_INSERTITEMW = ($__COMBOBOXCONSTANT_WM_USER + 11)
Global Const $CBEM_SETEXSTYLE = ($__COMBOBOXCONSTANT_WM_USER + 8)
Global Const $CBEM_SETEXTENDEDSTYLE = ($__COMBOBOXCONSTANT_WM_USER + 14)
Global Const $CBEM_SETIMAGELIST = ($__COMBOBOXCONSTANT_WM_USER + 2)
Global Const $CBEM_SETITEMA = ($__COMBOBOXCONSTANT_WM_USER + 5)
Global Const $CBEM_SETITEMW = ($__COMBOBOXCONSTANT_WM_USER + 12)
Global Const $CBEM_SETUNICODEFORMAT = 0x2000 + 5
Global Const $CBEM_SETWINDOWTHEME = 0x2000 + 11
Global Const $CBEN_FIRST = (-800)
Global Const $CBEN_LAST = (-830)
Global Const $CBEN_BEGINEDIT = ($CBEN_FIRST - 4)
Global Const $CBEN_DELETEITEM = ($CBEN_FIRST - 2)
Global Const $CBEN_DRAGBEGINA = ($CBEN_FIRST - 8)
Global Const $CBEN_DRAGBEGINW = ($CBEN_FIRST - 9)
Global Const $CBEN_ENDEDITA = ($CBEN_FIRST - 5)
Global Const $CBEN_ENDEDITW = ($CBEN_FIRST - 6)
Global Const $CBEN_GETDISPINFO = ($CBEN_FIRST - 0)
Global Const $CBEN_GETDISPINFOA = ($CBEN_FIRST - 0)
Global Const $CBEN_GETDISPINFOW = ($CBEN_FIRST - 7)
Global Const $CBEN_INSERTITEM = ($CBEN_FIRST - 1)
Global Const $CBEIF_DI_SETITEM = 0x10000000
Global Const $CBEIF_IMAGE = 0x2
Global Const $CBEIF_INDENT = 0x10
Global Const $CBEIF_LPARAM = 0x20
Global Const $CBEIF_OVERLAY = 0x8
Global Const $CBEIF_SELECTEDIMAGE = 0x4
Global Const $CBEIF_TEXT = 0x1
Global Const $GUI_SS_DEFAULT_COMBO = 0x00200042
Global Const $FC_NOOVERWRITE = 0
Global Const $FC_OVERWRITE = 1
Global Const $FC_CREATEPATH = 8
Global Const $FT_MODIFIED = 0
Global Const $FT_CREATED = 1
Global Const $FT_ACCESSED = 2
Global Const $FT_ARRAY = 0
Global Const $FT_STRING = 1
Global Const $FT_MSEC = 2
Global Const $FT_UTC = 4
Global Const $FSF_CREATEBUTTON = 1
Global Const $FSF_NEWDIALOG = 2
Global Const $FSF_EDITCONTROL = 4
Global Const $FT_NONRECURSIVE = 0
Global Const $FT_RECURSIVE = 1
Global Const $FO_READ = 0
Global Const $FO_APPEND = 1
Global Const $FO_OVERWRITE = 2
Global Const $FO_CREATEPATH = 8
Global Const $FO_BINARY = 16
Global Const $FO_UNICODE = 32
Global Const $FO_UTF16_LE = 32
Global Const $FO_UTF16_BE = 64
Global Const $FO_UTF8 = 128
Global Const $FO_UTF8_NOBOM = 256
Global Const $FO_ANSI = 512
Global Const $FO_UTF16_LE_NOBOM = 1024
Global Const $FO_UTF16_BE_NOBOM = 2048
Global Const $FO_UTF8_FULL = 16384
Global Const $FO_FULLFILE_DETECT = 16384
Global Const $EOF = -1
Global Const $FD_FILEMUSTEXIST = 1
Global Const $FD_PATHMUSTEXIST = 2
Global Const $FD_MULTISELECT = 4
Global Const $FD_PROMPTCREATENEW = 8
Global Const $FD_PROMPTOVERWRITE = 16
Global Const $CREATE_NEW = 1
Global Const $CREATE_ALWAYS = 2
Global Const $OPEN_EXISTING = 3
Global Const $OPEN_ALWAYS = 4
Global Const $TRUNCATE_EXISTING = 5
Global Const $INVALID_SET_FILE_POINTER = -1
Global Const $FILE_BEGIN = 0
Global Const $FILE_CURRENT = 1
Global Const $FILE_END = 2
Global Const $FILE_ATTRIBUTE_READONLY = 0x00000001
Global Const $FILE_ATTRIBUTE_HIDDEN = 0x00000002
Global Const $FILE_ATTRIBUTE_SYSTEM = 0x00000004
Global Const $FILE_ATTRIBUTE_DIRECTORY = 0x00000010
Global Const $FILE_ATTRIBUTE_ARCHIVE = 0x00000020
Global Const $FILE_ATTRIBUTE_DEVICE = 0x00000040
Global Const $FILE_ATTRIBUTE_NORMAL = 0x00000080
Global Const $FILE_ATTRIBUTE_TEMPORARY = 0x00000100
Global Const $FILE_ATTRIBUTE_SPARSE_FILE = 0x00000200
Global Const $FILE_ATTRIBUTE_REPARSE_POINT = 0x00000400
Global Const $FILE_ATTRIBUTE_COMPRESSED = 0x00000800
Global Const $FILE_ATTRIBUTE_OFFLINE = 0x00001000
Global Const $FILE_ATTRIBUTE_NOT_CONTENT_INDEXED = 0x00002000
Global Const $FILE_ATTRIBUTE_ENCRYPTED = 0x00004000
Global Const $FILE_SHARE_READ = 0x00000001
Global Const $FILE_SHARE_WRITE = 0x00000002
Global Const $FILE_SHARE_DELETE = 0x00000004
Global Const $FILE_SHARE_READWRITE = BitOR($FILE_SHARE_READ, $FILE_SHARE_WRITE)
Global Const $FILE_SHARE_ANY = BitOR($FILE_SHARE_READ, $FILE_SHARE_WRITE, $FILE_SHARE_DELETE)
Global Const $GENERIC_ALL = 0x10000000
Global Const $GENERIC_EXECUTE = 0x20000000
Global Const $GENERIC_WRITE = 0x40000000
Global Const $GENERIC_READ = 0x80000000
Global Const $GENERIC_READWRITE = BitOR($GENERIC_READ, $GENERIC_WRITE)
Global Const $FILE_ENCODING_UTF16LE = 32
Global Const $FE_ENTIRE_UTF8 = 1
Global Const $FE_PARTIALFIRST_UTF8 = 2
Global Const $FN_FULLPATH = 0
Global Const $FN_RELATIVEPATH = 1
Global Const $FV_COMMENTS = "Comments"
Global Const $FV_COMPANYNAME = "CompanyName"
Global Const $FV_FILEDESCRIPTION = "FileDescription"
Global Const $FV_FILEVERSION = "FileVersion"
Global Const $FV_INTERNALNAME = "InternalName"
Global Const $FV_LEGALCOPYRIGHT = "LegalCopyright"
Global Const $FV_LEGALTRADEMARKS = "LegalTrademarks"
Global Const $FV_ORIGINALFILENAME = "OriginalFilename"
Global Const $FV_PRODUCTNAME = "ProductName"
Global Const $FV_PRODUCTVERSION = "ProductVersion"
Global Const $FV_PRIVATEBUILD = "PrivateBuild"
Global Const $FV_SPECIALBUILD = "SpecialBuild"
Global Const $FRTA_NOCOUNT = 0
Global Const $FRTA_COUNT = 1
Global Const $FRTA_INTARRAYS = 2
Global Const $FRTA_ENTIRESPLIT = 4
Global Const $FLTA_FILESFOLDERS = 0
Global Const $FLTA_FILES = 1
Global Const $FLTA_FOLDERS = 2
Global Const $FLTAR_FILESFOLDERS = 0
Global Const $FLTAR_FILES = 1
Global Const $FLTAR_FOLDERS = 2
Global Const $FLTAR_NOHIDDEN = 4
Global Const $FLTAR_NOSYSTEM = 8
Global Const $FLTAR_NOLINK = 16
Global Const $FLTAR_NORECUR = 0
Global Const $FLTAR_RECUR = 1
Global Const $FLTAR_NOSORT = 0
Global Const $FLTAR_SORT = 1
Global Const $FLTAR_FASTSORT = 2
Global Const $FLTAR_NOPATH = 0
Global Const $FLTAR_RELPATH = 1
Global Const $FLTAR_FULLPATH = 2
Global Const $PATH_ORIGINAL = 0
Global Const $PATH_DRIVE = 1
Global Const $PATH_DIRECTORY = 2
Global Const $PATH_FILENAME = 3
Global Const $PATH_EXTENSION = 4
Global Const $SS_LEFT = 0x0
Global Const $SS_CENTER = 0x1
Global Const $SS_RIGHT = 0x2
Global Const $SS_ICON = 0x3
Global Const $SS_BLACKRECT = 0x4
Global Const $SS_GRAYRECT = 0x5
Global Const $SS_WHITERECT = 0x6
Global Const $SS_BLACKFRAME = 0x7
Global Const $SS_GRAYFRAME = 0x8
Global Const $SS_WHITEFRAME = 0x9
Global Const $SS_SIMPLE = 0xB
Global Const $SS_LEFTNOWORDWRAP = 0xC
Global Const $SS_BITMAP = 0xE
Global Const $SS_ENHMETAFILE = 0xF
Global Const $SS_ETCHEDHORZ = 0x10
Global Const $SS_ETCHEDVERT = 0x11
Global Const $SS_ETCHEDFRAME = 0x12
Global Const $SS_REALSIZECONTROL = 0x40
Global Const $SS_NOPREFIX = 0x0080
Global Const $SS_NOTIFY = 0x0100
Global Const $SS_CENTERIMAGE = 0x0200
Global Const $SS_RIGHTJUST = 0x0400
Global Const $SS_SUNKEN = 0x1000
Global Const $GUI_SS_DEFAULT_LABEL = 0
Global Const $GUI_SS_DEFAULT_GRAPHIC = 0
Global Const $GUI_SS_DEFAULT_ICON = $SS_NOTIFY
Global Const $GUI_SS_DEFAULT_PIC = $SS_NOTIFY
Global Const $STM_SETICON = 0x0170
Global Const $STM_GETICON = 0x0171
Global Const $STM_SETIMAGE = 0x0172
Global Const $STM_GETIMAGE = 0x0173
Global Const $OPT_COORDSRELATIVE = 0
Global Const $OPT_COORDSABSOLUTE = 1
Global Const $OPT_COORDSCLIENT = 2
Global Const $OPT_ERRORSILENT = 0
Global Const $OPT_ERRORFATAL = 1
Global Const $OPT_CAPSNOSTORE = 0
Global Const $OPT_CAPSSTORE = 1
Global Const $OPT_MATCHSTART = 1
Global Const $OPT_MATCHANY = 2
Global Const $OPT_MATCHEXACT = 3
Global Const $OPT_MATCHADVANCED = 4
Global Const $CCS_TOP = 0x01
Global Const $CCS_NOMOVEY = 0x02
Global Const $CCS_BOTTOM = 0x03
Global Const $CCS_NORESIZE = 0x04
Global Const $CCS_NOPARENTALIGN = 0x08
Global Const $CCS_NOHILITE = 0x10
Global Const $CCS_ADJUSTABLE = 0x20
Global Const $CCS_NODIVIDER = 0x40
Global Const $CCS_VERT = 0x0080
Global Const $CCS_LEFT = 0x0081
Global Const $CCS_NOMOVEX = 0x0082
Global Const $CCS_RIGHT = 0x0083
Global Const $DT_DRIVETYPE = 1
Global Const $DT_SSDSTATUS = 2
Global Const $DT_BUSTYPE = 3
Global Const $PROXY_IE = 0
Global Const $PROXY_NONE = 1
Global Const $PROXY_SPECIFIED = 2
Global Const $OBJID_WINDOW = 0x00000000
Global Const $OBJID_TITLEBAR = 0xFFFFFFFE
Global Const $OBJID_SIZEGRIP = 0xFFFFFFF9
Global Const $OBJID_CARET = 0xFFFFFFF8
Global Const $OBJID_CURSOR = 0xFFFFFFF7
Global Const $OBJID_ALERT = 0xFFFFFFF6
Global Const $OBJID_SOUND = 0xFFFFFFF5
Global Const $DLG_CENTERONTOP = 0
Global Const $DLG_NOTITLE = 1
Global Const $DLG_NOTONTOP = 2
Global Const $DLG_TEXTLEFT = 4
Global Const $DLG_TEXTRIGHT = 8
Global Const $DLG_MOVEABLE = 16
Global Const $DLG_TEXTVCENTER = 32
Global Const $MCID_UNKNOWN = -1
Global Const $MCID_HAND = 0
Global Const $MCID_APPSTARTING = 1
Global Const $MCID_ARROW = 2
Global Const $MCID_CROSS = 3
Global Const $MCID_HELP = 4
Global Const $MCID_IBEAM = 5
Global Const $MCID_ICON = 6
Global Const $MCID_NO = 7
Global Const $MCID_SIZE = 8
Global Const $MCID_SIZEALL = 9
Global Const $MCID_SIZENESW = 10
Global Const $MCID_SIZENS = 11
Global Const $MCID_SIZENWSE = 12
Global Const $MCID_SIZEWE = 13
Global Const $MCID_UPARROW = 14
Global Const $MCID_WAIT = 15
Global Const $MCID_NONE = 16
Global Const $SD_LOGOFF = 0
Global Const $SD_SHUTDOWN = 1
Global Const $SD_REBOOT = 2
Global Const $SD_FORCE = 4
Global Const $SD_POWERDOWN = 8
Global Const $SD_FORCEHUNG = 16
Global Const $SD_STANDBY = 32
Global Const $SD_HIBERNATE = 64
Global Const $STDIN_CHILD = 1
Global Const $STDOUT_CHILD = 2
Global Const $STDERR_CHILD = 4
Global Const $STDERR_MERGED = 8
Global Const $STDIO_INHERIT_PARENT = 0x10
Global Const $RUN_CREATE_NEW_CONSOLE = 0x00010000
Global Const $UBOUND_DIMENSIONS = 0
Global Const $UBOUND_ROWS = 1
Global Const $UBOUND_COLUMNS = 2
Global Const $MOUSEEVENTF_ABSOLUTE = 0x8000
Global Const $MOUSEEVENTF_MOVE = 0x0001
Global Const $MOUSEEVENTF_LEFTDOWN = 0x0002
Global Const $MOUSEEVENTF_LEFTUP = 0x0004
Global Const $MOUSEEVENTF_RIGHTDOWN = 0x0008
Global Const $MOUSEEVENTF_RIGHTUP = 0x0010
Global Const $MOUSEEVENTF_MIDDLEDOWN = 0x0020
Global Const $MOUSEEVENTF_MIDDLEUP = 0x0040
Global Const $MOUSEEVENTF_WHEEL = 0x0800
Global Const $MOUSEEVENTF_XDOWN = 0x0080
Global Const $MOUSEEVENTF_XUP = 0x0100
Global Const $REG_NONE = 0
Global Const $REG_SZ = 1
Global Const $REG_EXPAND_SZ = 2
Global Const $REG_BINARY = 3
Global Const $REG_DWORD = 4
Global Const $REG_DWORD_LITTLE_ENDIAN = 4
Global Const $REG_DWORD_BIG_ENDIAN = 5
Global Const $REG_LINK = 6
Global Const $REG_MULTI_SZ = 7
Global Const $REG_RESOURCE_LIST = 8
Global Const $REG_FULL_RESOURCE_DESCRIPTOR = 9
Global Const $REG_RESOURCE_REQUIREMENTS_LIST = 10
Global Const $REG_QWORD = 11
Global Const $REG_QWORD_LITTLE_ENDIAN = 11
Global Const $HWND_BOTTOM = 1
Global Const $HWND_NOTOPMOST = -2
Global Const $HWND_TOP = 0
Global Const $HWND_TOPMOST = -1
Global Const $SWP_NOSIZE = 0x0001
Global Const $SWP_NOMOVE = 0x0002
Global Const $SWP_NOZORDER = 0x0004
Global Const $SWP_NOREDRAW = 0x0008
Global Const $SWP_NOACTIVATE = 0x0010
Global Const $SWP_FRAMECHANGED = 0x0020
Global Const $SWP_DRAWFRAME = 0x0020
Global Const $SWP_SHOWWINDOW = 0x0040
Global Const $SWP_HIDEWINDOW = 0x0080
Global Const $SWP_NOCOPYBITS = 0x0100
Global Const $SWP_NOOWNERZORDER = 0x0200
Global Const $SWP_NOREPOSITION = 0x0200
Global Const $SWP_NOSENDCHANGING = 0x0400
Global Const $SWP_DEFERERASE = 0x2000
Global Const $SWP_ASYNCWINDOWPOS = 0x4000
Global Const $KEYWORD_DEFAULT = 1
Global Const $KEYWORD_NULL = 2
Global Const $DECLARED_LOCAL = -1
Global Const $DECLARED_UNKNOWN = 0
Global Const $DECLARED_GLOBAL = 1
Global Const $ASSIGN_CREATE = 0
Global Const $ASSIGN_FORCELOCAL = 1
Global Const $ASSIGN_FORCEGLOBAL = 2
Global Const $ASSIGN_EXISTFAIL = 4
Global Const $BI_ENABLE = 0
Global Const $BI_DISABLE = 1
Global Const $BREAK_ENABLE = 1
Global Const $BREAK_DISABLE = 0
Global Const $CDTRAY_OPEN = "open"
Global Const $CDTRAY_CLOSED = "closed"
Global Const $SEND_DEFAULT = 0
Global Const $SEND_RAW = 1
Global Const $DIR_DEFAULT = 0
Global Const $DIR_EXTENDED = 1
Global Const $DIR_NORECURSE = 2
Global Const $DIR_REMOVE = 1
Global Const $DT_ALL = "ALL"
Global Const $DT_CDROM = "CDROM"
Global Const $DT_REMOVABLE = "REMOVABLE"
Global Const $DT_FIXED = "FIXED"
Global Const $DT_NETWORK = "NETWORK"
Global Const $DT_RAMDISK = "RAMDISK"
Global Const $DT_UNKNOWN = "UNKNOWN"
Global Const $DT_UNDEFINED = 1
Global Const $DT_FAT = "FAT"
Global Const $DT_FAT32 = "FAT32"
Global Const $DT_EXFAT = "exFAT"
Global Const $DT_NTFS = "NTFS"
Global Const $DT_NWFS = "NWFS"
Global Const $DT_CDFS = "CDFS"
Global Const $DT_UDF = "UDF"
Global Const $DMA_DEFAULT = 0
Global Const $DMA_PERSISTENT = 1
Global Const $DMA_AUTHENTICATION = 8
Global Const $DS_UNKNOWN = "UNKNOWN"
Global Const $DS_READY = "READY"
Global Const $DS_NOTREADY = "NOTREADY"
Global Const $DS_INVALID = "INVALID"
Global Const $MOUSE_CLICK_LEFT = "left"
Global Const $MOUSE_CLICK_RIGHT = "right"
Global Const $MOUSE_CLICK_MIDDLE = "middle"
Global Const $MOUSE_CLICK_MAIN = "main"
Global Const $MOUSE_CLICK_MENU = "menu"
Global Const $MOUSE_CLICK_PRIMARY = "primary"
Global Const $MOUSE_CLICK_SECONDARY = "secondary"
Global Const $MOUSE_WHEEL_UP = "up"
Global Const $MOUSE_WHEEL_DOWN = "down"
Global Const $NUMBER_AUTO = 0
Global Const $NUMBER_32BIT = 1
Global Const $NUMBER_64BIT = 2
Global Const $NUMBER_DOUBLE = 3
Global Const $OBJ_NAME = 1
Global Const $OBJ_STRING = 2
Global Const $OBJ_PROGID = 3
Global Const $OBJ_FILE = 4
Global Const $OBJ_MODULE = 5
Global Const $OBJ_CLSID = 6
Global Const $OBJ_IID = 7
Global Const $EXITCLOSE_NORMAL = 0
Global Const $EXITCLOSE_BYEXIT = 1
Global Const $EXITCLOSE_BYCLICK = 2
Global Const $EXITCLOSE_BYLOGOFF = 3
Global Const $EXITCLOSE_BYSHUTDOWN = 4
Global Const $PROCESS_STATS_MEMORY = 0
Global Const $PROCESS_STATS_IO = 1
Global Const $PROCESS_LOW = 0
Global Const $PROCESS_BELOWNORMAL = 1
Global Const $PROCESS_NORMAL = 2
Global Const $PROCESS_ABOVENORMAL = 3
Global Const $PROCESS_HIGH = 4
Global Const $PROCESS_REALTIME = 5
Global Const $RUN_LOGON_NOPROFILE = 0
Global Const $RUN_LOGON_PROFILE = 1
Global Const $RUN_LOGON_NETWORK = 2
Global Const $RUN_LOGON_INHERIT = 4
Global Const $SOUND_NOWAIT = 0
Global Const $SOUND_WAIT = 1
Global Const $SHEX_OPEN = "open"
Global Const $SHEX_EDIT = "edit"
Global Const $SHEX_PRINT = "print"
Global Const $SHEX_PROPERTIES = "properties"
Global Const $TCP_DATA_DEFAULT = 0
Global Const $TCP_DATA_BINARY = 1
Global Const $UDP_OPEN_DEFAULT = 0
Global Const $UDP_OPEN_BROADCAST = 1
Global Const $UDP_DATA_DEFAULT = 0
Global Const $UDP_DATA_BINARY = 1
Global Const $UDP_DATA_ARRAY = 2
Global Const $TIP_NOICON = 0
Global Const $TIP_INFOICON = 1
Global Const $TIP_WARNINGICON = 2
Global Const $TIP_ERRORICON = 3
Global Const $TIP_BALLOON = 1
Global Const $TIP_CENTER = 2
Global Const $TIP_FORCEVISIBLE = 4
Global Const $WINDOWS_NOONTOP = 0
Global Const $WINDOWS_ONTOP = 1
Global Const $WIN_STATE_EXISTS = 1
Global Const $WIN_STATE_VISIBLE = 2
Global Const $WIN_STATE_ENABLED = 4
Global Const $WIN_STATE_ACTIVE = 8
Global Const $WIN_STATE_MINIMIZED = 16
Global Const $WIN_STATE_MAXIMIZED = 32
Global Const $MB_OK = 0
Global Const $MB_OKCANCEL = 1
Global Const $MB_ABORTRETRYIGNORE = 2
Global Const $MB_YESNOCANCEL = 3
Global Const $MB_YESNO = 4
Global Const $MB_RETRYCANCEL = 5
Global Const $MB_CANCELTRYCONTINUE = 6
Global Const $MB_HELP = 0x4000
Global Const $MB_ICONNONE = 0
Global Const $MB_ICONSTOP = 16
Global Const $MB_ICONERROR = 16
Global Const $MB_ICONHAND = 16
Global Const $MB_ICONQUESTION = 32
Global Const $MB_ICONEXCLAMATION = 48
Global Const $MB_ICONWARNING = 48
Global Const $MB_ICONINFORMATION = 64
Global Const $MB_ICONASTERISK = 64
Global Const $MB_USERICON = 0x00000080
Global Const $MB_DEFBUTTON1 = 0
Global Const $MB_DEFBUTTON2 = 256
Global Const $MB_DEFBUTTON3 = 512
Global Const $MB_DEFBUTTON4 = 768
Global Const $MB_APPLMODAL = 0
Global Const $MB_SYSTEMMODAL = 4096
Global Const $MB_TASKMODAL = 8192
Global Const $MB_DEFAULT_DESKTOP_ONLY = 0x00020000
Global Const $MB_RIGHT = 0x00080000
Global Const $MB_RTLREADING = 0x00100000
Global Const $MB_SETFOREGROUND = 0x00010000
Global Const $MB_TOPMOST = 0x00040000
Global Const $MB_SERVICE_NOTIFICATION = 0x00200000
Global Const $MB_RIGHTJUSTIFIED = $MB_RIGHT
Global Const $IDTIMEOUT = -1
Global Const $IDOK = 1
Global Const $IDCANCEL = 2
Global Const $IDABORT = 3
Global Const $IDRETRY = 4
Global Const $IDIGNORE = 5
Global Const $IDYES = 6
Global Const $IDNO = 7
Global Const $IDCLOSE = 8
Global Const $IDHELP = 9
Global Const $IDTRYAGAIN = 10
Global Const $IDCONTINUE = 11
Global Const $STR_NOCASESENSE = 0
Global Const $STR_CASESENSE = 1
Global Const $STR_NOCASESENSEBASIC = 2
Global Const $STR_STRIPLEADING = 1
Global Const $STR_STRIPTRAILING = 2
Global Const $STR_STRIPSPACES = 4
Global Const $STR_STRIPALL = 8
Global Const $STR_CHRSPLIT = 0
Global Const $STR_ENTIRESPLIT = 1
Global Const $STR_NOCOUNT = 2
Global Const $STR_REGEXPMATCH = 0
Global Const $STR_REGEXPARRAYMATCH = 1
Global Const $STR_REGEXPARRAYFULLMATCH = 2
Global Const $STR_REGEXPARRAYGLOBALMATCH = 3
Global Const $STR_REGEXPARRAYGLOBALFULLMATCH = 4
Global Const $STR_ENDISSTART = 0
Global Const $STR_ENDNOTSTART = 1
Global Const $SB_ANSI = 1
Global Const $SB_UTF16LE = 2
Global Const $SB_UTF16BE = 3
Global Const $SB_UTF8 = 4
Global Const $SE_UTF16 = 0
Global Const $SE_ANSI = 1
Global Const $SE_UTF8 = 2
Global Const $STR_UTF16 = 0
Global Const $STR_UCS2 = 1
#Region Global Variables and Constants
Global $_g_ArrayDisplay_bUserFunc = False
Global $_g_ArrayDisplay_hListView
Global $_g_ArrayDisplay_iTranspose
Global $_g_ArrayDisplay_iDisplayRow
Global $_g_ArrayDisplay_aArray
Global $_g_ArrayDisplay_iDims
Global $_g_ArrayDisplay_nRows
Global $_g_ArrayDisplay_nCols
Global $_g_ArrayDisplay_iItem_Start
Global $_g_ArrayDisplay_iItem_End
Global $_g_ArrayDisplay_iSubItem_Start
Global $_g_ArrayDisplay_iSubItem_End
Global $_g_ArrayDisplay_aIndex
Global $_g_ArrayDisplay_aIndexes[1]
Global $_g_ArrayDisplay_iSortDir
Global $_g_ArrayDisplay_asHeader
Global $_g_ArrayDisplay_aNumericSort
Global $ARRAYDISPLAY_ROWPREFIX = "#"
Global $ARRAYDISPLAY_NUMERICSORT = "*"
Global Const $ARRAYDISPLAY_COLALIGNLEFT = 0
Global Const $ARRAYDISPLAY_TRANSPOSE = 1
Global Const $ARRAYDISPLAY_COLALIGNRIGHT = 2
Global Const $ARRAYDISPLAY_COLALIGNCENTER = 4
Global Const $ARRAYDISPLAY_VERBOSE = 8
Global Const $ARRAYDISPLAY_NOROW = 64
Global Const $ARRAYDISPLAY_CHECKERROR = 128
Global Const $_ARRAYCONSTANT_tagLVITEM = "struct;uint Mask;int Item;int SubItem;uint State;uint StateMask;ptr Text;int TextMax;int Image;lparam Param;" &  "int Indent;int GroupID;uint Columns;ptr pColumns;ptr piColFmt;int iGroup;endstruct"
#EndRegion Global Variables and Constants
#Region Functions list
#EndRegion Functions list
Func __ArrayDisplay_Share(Const ByRef $aArray, $sTitle = Default, $sArrayRange = Default, $iFlags = Default, $vUser_Separator = Default, $sHeader = Default, $iDesired_Colwidth = Default, $hUser_Function = Default, $bDebug = True, Const $_iScriptLineNumber = @ScriptLineNumber, Const $_iCallerError = @error, Const $_iCallerExtended = @extended)
Local $sMsgBoxTitle = (($bDebug) ? ("_DebugArrayDisplay") : ("_ArrayDisplay"))
If $_g_ArrayDisplay_bUserFunc Then
$hUser_Function = Default
$bDebug = False
EndIf
If Not IsKeyword($hUser_Function) = $KEYWORD_DEFAULT Then
$_g_ArrayDisplay_bUserFunc = True
EndIf
If $sTitle = Default Then $sTitle = $sMsgBoxTitle
If $sArrayRange = Default Then $sArrayRange = ""
If $iFlags = Default Then $iFlags = 0
If $vUser_Separator = Default Then $vUser_Separator = ""
If $sHeader = Default Then $sHeader = ""
Local $iMin_ColWidth = 55
Local $iMax_ColWidth = 350
If $iDesired_Colwidth > 0 Then $iMax_ColWidth = $iDesired_Colwidth
If $iDesired_Colwidth < 0 Then $iMin_ColWidth = -$iDesired_Colwidth
If $iMax_ColWidth = Default Then $iMax_ColWidth = 350
If $iMax_ColWidth > 4095 Then $iMax_ColWidth = 4095
If $hUser_Function = Default Then $hUser_Function = 0
$_g_ArrayDisplay_iTranspose = BitAND($iFlags, $ARRAYDISPLAY_TRANSPOSE)
Local $iColAlign = BitAND($iFlags, 6)
Local $iVerbose = Int(BitAND($iFlags, $ARRAYDISPLAY_VERBOSE))
$_g_ArrayDisplay_iDisplayRow = Int(BitAND($iFlags, $ARRAYDISPLAY_NOROW) = 0)
Local $iButtonBorder = (($bDebug) ? (40) : (20))
#Region Check valid array
Local $sMsg = "", $iRet = 1
Local $fTimer = 0
If IsArray($aArray) Then
$_g_ArrayDisplay_aArray = $aArray
$_g_ArrayDisplay_iDims = UBound($_g_ArrayDisplay_aArray, $UBOUND_DIMENSIONS)
If $_g_ArrayDisplay_iDims = 1 Then $_g_ArrayDisplay_iTranspose = 0
$_g_ArrayDisplay_nRows = UBound($_g_ArrayDisplay_aArray, $UBOUND_ROWS)
$_g_ArrayDisplay_nCols = ($_g_ArrayDisplay_iDims = 2) ? UBound($_g_ArrayDisplay_aArray, $UBOUND_COLUMNS) : 1
Dim $_g_ArrayDisplay_aNumericSort[$_g_ArrayDisplay_nCols]
If $_g_ArrayDisplay_iDims > 2 Then
$sMsg = "Larger than 2D array passed to function"
$iRet = 2
EndIf
If $_iCallerError Then
If $bDebug Then
If IsDeclared("__g_sReportCallBack_DebugReport_Debug") Then
$sMsg = "@@ Debug( " & $_iScriptLineNumber & ") : @error = " & $_iCallerError & " in " & $sMsgBoxTitle & "( '" & $sTitle & "' )"
Execute('$__g_sReportCallBack_DebugReport_Debug("' & $sMsg & '")')
EndIf
$iRet = 3
ElseIf BitAND($iFlags, $ARRAYDISPLAY_CHECKERROR) Then
$sMsg = "@error = " & $_iCallerError & " when calling the function"
If $_iScriptLineNumber > 0 Then $sMsg &= " at line " & $_iScriptLineNumber
$iRet = 3
EndIf
EndIf
Else
$sMsg = "No array variable passed to function"
EndIf
If $sMsg Then
If $iVerbose And MsgBox($MB_SYSTEMMODAL + $MB_ICONERROR + $MB_YESNO,  $sMsgBoxTitle & "() Error: " & $sTitle, $sMsg & @CRLF & @CRLF & "Exit the script?") = $IDYES Then
Exit
Else
Return SetError($iRet, 0, 0)
EndIf
EndIf
#EndRegion Check valid array
#Region Check array range
Local $iCW_ColWidth = Number($vUser_Separator)
Local $sCurr_Separator = Opt("GUIDataSeparatorChar")
If $vUser_Separator = "" Then $vUser_Separator = $sCurr_Separator
$_g_ArrayDisplay_iItem_Start = 0
$_g_ArrayDisplay_iItem_End = $_g_ArrayDisplay_nRows - 1
$_g_ArrayDisplay_iSubItem_Start = 0
$_g_ArrayDisplay_iSubItem_End = (($_g_ArrayDisplay_iDims = 2) ? ($_g_ArrayDisplay_nCols - 1) : (0))
Local $avRangeSplit
If $sArrayRange Then
Local $vTmp, $aArray_Range = StringRegExp($sArrayRange & "||", "(?U)(.*)\|", $STR_REGEXPARRAYGLOBALMATCH)
If $aArray_Range[0] Then
$avRangeSplit = StringSplit($aArray_Range[0], ":")
If @error Then
$_g_ArrayDisplay_iItem_End = Number($aArray_Range[0])
Else
$_g_ArrayDisplay_iItem_Start = Number($avRangeSplit[1])
If $avRangeSplit[2] <> "" Then
$_g_ArrayDisplay_iItem_End = Number($avRangeSplit[2])
EndIf
EndIf
EndIf
If $_g_ArrayDisplay_iItem_Start < 0 Then $_g_ArrayDisplay_iItem_Start = 0
If $_g_ArrayDisplay_iItem_End >= $_g_ArrayDisplay_nRows Then $_g_ArrayDisplay_iItem_End = $_g_ArrayDisplay_nRows - 1
If ($_g_ArrayDisplay_iItem_Start > $_g_ArrayDisplay_iItem_End) And ($_g_ArrayDisplay_iItem_End > 0) Then
$vTmp = $_g_ArrayDisplay_iItem_Start
$_g_ArrayDisplay_iItem_Start = $_g_ArrayDisplay_iItem_End
$_g_ArrayDisplay_iItem_End = $vTmp
EndIf
If $_g_ArrayDisplay_iDims = 2 And $aArray_Range[1] Then
$avRangeSplit = StringSplit($aArray_Range[1], ":")
If @error Then
$_g_ArrayDisplay_iSubItem_End = Number($aArray_Range[1])
Else
$_g_ArrayDisplay_iSubItem_Start = Number($avRangeSplit[1])
If $avRangeSplit[2] <> "" Then
$_g_ArrayDisplay_iSubItem_End = Number($avRangeSplit[2])
EndIf
EndIf
If $_g_ArrayDisplay_iSubItem_Start > $_g_ArrayDisplay_iSubItem_End Then
$vTmp = $_g_ArrayDisplay_iSubItem_Start
$_g_ArrayDisplay_iSubItem_Start = $_g_ArrayDisplay_iSubItem_End
$_g_ArrayDisplay_iSubItem_End = $vTmp
EndIf
If $_g_ArrayDisplay_iSubItem_Start < 0 Then $_g_ArrayDisplay_iSubItem_Start = 0
If $_g_ArrayDisplay_iSubItem_End >= $_g_ArrayDisplay_nCols Then $_g_ArrayDisplay_iSubItem_End = $_g_ArrayDisplay_nCols - 1
EndIf
EndIf
Local $sDisplayData = "[" & $_g_ArrayDisplay_nRows & "]"
If $_g_ArrayDisplay_iDims = 2 Then
$sDisplayData &= " [" & $_g_ArrayDisplay_nCols & "]"
EndIf
Local $sTipData = ""
If $sArrayRange Then
If $sTipData Then $sTipData &= " - "
$sTipData &= "Range set " & $sArrayRange
EndIf
If $_g_ArrayDisplay_iTranspose Then
If $sTipData Then $sTipData &= " - "
$sTipData &= "Transposed"
EndIf
If $sArrayRange Or $_g_ArrayDisplay_iTranspose Then $_g_ArrayDisplay_aArray = __ArrayDisplay_CreateSubArray()
#EndRegion Check array range
#Region Check custom header
$_g_ArrayDisplay_asHeader = StringSplit($sHeader, $sCurr_Separator, $STR_NOCOUNT)
If UBound($_g_ArrayDisplay_asHeader) = 0 Then Dim $_g_ArrayDisplay_asHeader[1] = [""]
$sHeader = "Row"
Local $iIndex = $_g_ArrayDisplay_iSubItem_Start
If $_g_ArrayDisplay_iTranspose Then
$sHeader = "Row"
For $j = 0 To $_g_ArrayDisplay_nCols - 1
$sHeader &= $sCurr_Separator & $ARRAYDISPLAY_ROWPREFIX & " " & $j + $_g_ArrayDisplay_iSubItem_Start
Next
Else
If $_g_ArrayDisplay_asHeader[0] Then
For $iIndex = $_g_ArrayDisplay_iSubItem_Start To $_g_ArrayDisplay_iSubItem_End
If $iIndex >= UBound($_g_ArrayDisplay_asHeader) Then ExitLoop
If StringRight($_g_ArrayDisplay_asHeader[$iIndex], 1) = $ARRAYDISPLAY_NUMERICSORT Then
$_g_ArrayDisplay_asHeader[$iIndex] = StringTrimRight($_g_ArrayDisplay_asHeader[$iIndex], 1)
$_g_ArrayDisplay_aNumericSort[$iIndex - $_g_ArrayDisplay_iSubItem_Start] = 1
EndIf
$sHeader &= $sCurr_Separator & $_g_ArrayDisplay_asHeader[$iIndex]
Next
EndIf
For $j = $iIndex To $_g_ArrayDisplay_iSubItem_End
$sHeader &= $sCurr_Separator & "Col " & $j
Next
EndIf
If Not $_g_ArrayDisplay_iDisplayRow Then $sHeader = StringTrimLeft($sHeader, 4)
#EndRegion Check custom header
#Region Generate Sort index for columns
__ArrayDisplay_SortIndexes(0, -1)
Local $hTimer = TimerInit()
__ArrayDisplay_SortIndexes(1, 1)
$fTimer = TimerDiff($hTimer)
If $fTimer * $_g_ArrayDisplay_nCols < 1000 Then
__ArrayDisplay_SortIndexes(2, $_g_ArrayDisplay_nCols)
Else
EndIf
#EndRegion Generate Sort index for columns
#Region GUI and Listview generation
If $iVerbose And ($_g_ArrayDisplay_nRows * $_g_ArrayDisplay_nCols) > 1000 Then
SplashTextOn($sMsgBoxTitle, "Preparing display" & @CRLF & @CRLF & "Please be patient", 300, 100)
EndIf
Local Const $_ARRAYCONSTANT_GUI_DOCKBOTTOM = 64
Local Const $_ARRAYCONSTANT_GUI_DOCKBORDERS = 102
Local Const $_ARRAYCONSTANT_GUI_DOCKHEIGHT = 512
Local Const $_ARRAYCONSTANT_GUI_DOCKLEFT = 2
Local Const $_ARRAYCONSTANT_GUI_DOCKRIGHT = 4
Local Const $_ARRAYCONSTANT_GUI_DOCKHCENTER = 8
Local Const $_ARRAYCONSTANT_GUI_EVENT_CLOSE = -3
Local Const $_ARRAYCONSTANT_GUI_EVENT_ARRAY = 1
Local Const $_ARRAYCONSTANT_GUI_FOCUS = 256
Local Const $_ARRAYCONSTANT_SS_CENTER = 0x1
Local Const $_ARRAYCONSTANT_SS_CENTERIMAGE = 0x0200
Local Const $_ARRAYCONSTANT_LVM_GETITEMRECT = (0x1000 + 14)
Local Const $_ARRAYCONSTANT_LVM_GETITEMSTATE = (0x1000 + 44)
Local Const $_ARRAYCONSTANT_LVM_GETSELECTEDCOUNT = (0x1000 + 50)
Local Const $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE = (0x1000 + 54)
Local Const $_ARRAYCONSTANT_LVS_EX_GRIDLINES = 0x1
Local Const $_ARRAYCONSTANT_LVIS_SELECTED = 0x0002
Local Const $_ARRAYCONSTANT_LVS_SHOWSELALWAYS = 0x8
Local Const $_ARRAYCONSTANT_LVS_OWNERDATA = 0x1000
Local Const $_ARRAYCONSTANT_LVS_EX_FULLROWSELECT = 0x20
Local Const $_ARRAYCONSTANT_LVS_EX_DOUBLEBUFFER = 0x00010000
Local Const $_ARRAYCONSTANT_WS_EX_CLIENTEDGE = 0x0200
Local Const $_ARRAYCONSTANT_WS_MAXIMIZEBOX = 0x00010000
Local Const $_ARRAYCONSTANT_WS_MINIMIZEBOX = 0x00020000
Local Const $_ARRAYCONSTANT_WS_SIZEBOX = 0x00040000
Local $iCoordMode = Opt("GUICoordMode", 1)
Local $iOrgWidth = 210, $iHeight = 200, $iMinSize = 250
Local $hGUI = GUICreate($sTitle, $iOrgWidth, $iHeight, Default, Default, BitOR($_ARRAYCONSTANT_WS_SIZEBOX, $_ARRAYCONSTANT_WS_MINIMIZEBOX, $_ARRAYCONSTANT_WS_MAXIMIZEBOX))
Local $aiGUISize = WinGetClientSize($hGUI)
Local $idListView = GUICtrlCreateListView($sHeader, 0, 0, $aiGUISize[0], $aiGUISize[1] - $iButtonBorder, BitOR($_ARRAYCONSTANT_LVS_SHOWSELALWAYS, $_ARRAYCONSTANT_LVS_OWNERDATA))
$_g_ArrayDisplay_hListView = GUICtrlGetHandle($idListView)
GUICtrlSendMsg($idListView, $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE, $_ARRAYCONSTANT_LVS_EX_GRIDLINES, $_ARRAYCONSTANT_LVS_EX_GRIDLINES)
GUICtrlSendMsg($idListView, $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE, $_ARRAYCONSTANT_LVS_EX_FULLROWSELECT, $_ARRAYCONSTANT_LVS_EX_FULLROWSELECT)
GUICtrlSendMsg($idListView, $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE, $_ARRAYCONSTANT_LVS_EX_DOUBLEBUFFER, $_ARRAYCONSTANT_LVS_EX_DOUBLEBUFFER)
GUICtrlSendMsg($idListView, $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE, $_ARRAYCONSTANT_WS_EX_CLIENTEDGE, $_ARRAYCONSTANT_WS_EX_CLIENTEDGE)
Local $hHeader = HWnd(GUICtrlSendMsg($idListView, (0x1000 + 31), 0, 0))
GUICtrlSetResizing($idListView, $_ARRAYCONSTANT_GUI_DOCKBORDERS)
Local $iColFill = $_g_ArrayDisplay_nCols + $_g_ArrayDisplay_iDisplayRow
If $iColAlign Then
For $i = 0 To $iColFill - 1
__ArrayDisplay_JustifyColumn($idListView, $i, $iColAlign / 2)
Next
EndIf
GUICtrlSendMsg($idListView, (0x1000 + 47), $_g_ArrayDisplay_nRows, 0)
Local $tRECT = DllStructCreate("struct; long Left;long Top;long Right;long Bottom; endstruct")
DllCall("user32.dll", "struct*", "SendMessageW", "hwnd", $_g_ArrayDisplay_hListView, "uint", $_ARRAYCONSTANT_LVM_GETITEMRECT, "wparam", 0, "struct*", $tRECT)
Local $aiWin_Pos = WinGetPos($hGUI)
Local $aiLV_Pos = ControlGetPos($hGUI, "", $idListView)
$iHeight = (($_g_ArrayDisplay_nRows + 3) * (DllStructGetData($tRECT, "Bottom") - DllStructGetData($tRECT, "Top"))) + $aiWin_Pos[3] - $aiLV_Pos[3]
If $iHeight > @DesktopHeight - 100 Then
$iHeight = @DesktopHeight - 100
ElseIf $iHeight < $iMinSize Then
$iHeight = $iMinSize
EndIf
If $iVerbose Then SplashOff()
$_g_ArrayDisplay_iSortDir = 0x00000400
Local $iColumn = 0, $iColumnPrev = -1
If $_g_ArrayDisplay_iDisplayRow Then
$iColumnPrev = $iColumn
__ArrayDisplay_HeaderSetItemFormat($hHeader, $iColumn, 0x00004000 + $_g_ArrayDisplay_iSortDir + $iColAlign / 2)
EndIf
$_g_ArrayDisplay_aIndex = $_g_ArrayDisplay_aIndexes[0]
#EndRegion GUI and Listview generation
Local $p__ArrayDisplay_NotifyHandler = DllCallbackGetPtr(DllCallbackRegister("__ArrayDisplay_NotifyHandler", "lresult", "hwnd;uint;wparam;lparam;uint_ptr;dword_ptr"))
DllCall("comctl32.dll", "bool", "SetWindowSubclass", "hwnd", $hGUI, "ptr", $p__ArrayDisplay_NotifyHandler, "uint_ptr", 0, "dword_ptr", 0)
#Region Adjust dialog width
Local $iWidth = 40, $iColWidth = 0, $aiColWidth[$iColFill]
Local $iColWidthHeader, $iMin_ColW = 55
For $i = 0 To $iColFill - 1
If $i > 0 Then $iMin_ColW = $iMin_ColWidth
GUICtrlSendMsg($idListView, (0x1000 + 30), $i, -1)
$iColWidth = GUICtrlSendMsg($idListView, (0x1000 + 29), $i, 0)
If $sHeader <> "" Then
If $iColWidth = 0 Then ExitLoop
GUICtrlSendMsg($idListView, (0x1000 + 30), $i, -2)
$iColWidthHeader = GUICtrlSendMsg($idListView, (0x1000 + 29), $i, 0)
If $iColWidth < $iMin_ColW And $iColWidthHeader < $iMin_ColW Then
GUICtrlSendMsg($idListView, (0x1000 + 30), $i, $iMin_ColW)
$iColWidth = $iMin_ColW
ElseIf $iColWidthHeader < $iColWidth Then
GUICtrlSendMsg($idListView, (0x1000 + 30), $i, $iColWidth)
Else
$iColWidth = $iColWidthHeader
EndIf
Else
If $iColWidth < $iMin_ColW Then
GUICtrlSendMsg($idListView, (0x1000 + 30), $i, $iMin_ColW)
$iColWidth = $iMin_ColW
EndIf
EndIf
$iWidth += $iColWidth
$aiColWidth[$i] = $iColWidth
Next
If $iWidth > @DesktopWidth - 100 Then
$iWidth = 40
For $i = 0 To $iColFill - 1
If $aiColWidth[$i] > $iMax_ColWidth Then
GUICtrlSendMsg($idListView, (0x1000 + 30), $i, $iMax_ColWidth)
$iWidth += $iMax_ColWidth
Else
$iWidth += $aiColWidth[$i]
EndIf
If $i < 20 And $bDebug Then ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : $iWidth = ' & $iWidth & " $i = " & $i & @CRLF)
Next
EndIf
If $iWidth > @DesktopWidth - 100 Then
$iWidth = @DesktopWidth - 100
ElseIf $iWidth < $iMinSize Then
$iWidth = $iMinSize
EndIf
#EndRegion Adjust dialog width
Local $iScrollBarSize = 0
If $iHeight = (@DesktopHeight - 100) Then $iScrollBarSize = 15
WinMove($hGUI, "", (@DesktopWidth - $iWidth + $iScrollBarSize) / 2, (@DesktopHeight - $iHeight) / 2, $iWidth + $iScrollBarSize, $iHeight)
$aiGUISize = WinGetClientSize($hGUI)
GUICtrlSetPos($idListView, 0, 0, $iWidth, $aiGUISize[1] - $iButtonBorder)
#Region Create bottom infos
Local $iButtonWidth_1 = $aiGUISize[0] / 2
Local $iButtonWidth_2 = $aiGUISize[0] / 3
Local $idCopy_ID = 9999, $idCopy_Data = 99999, $idData_Label = 99999, $idUser_Func = 99999, $idExit_Script = 99999
If $bDebug Then
$idCopy_ID = GUICtrlCreateButton("Copy Data && Hdr/Row", 0, $aiGUISize[1] - $iButtonBorder, $iButtonWidth_1, 20)
$idCopy_Data = GUICtrlCreateButton("Copy Data Only", $iButtonWidth_1, $aiGUISize[1] - $iButtonBorder, $iButtonWidth_1, 20)
Local $iButtonWidth_Var = $iButtonWidth_1
Local $iOffset = $iButtonWidth_1
If IsFunc($hUser_Function) Then
$idUser_Func = GUICtrlCreateButton("Run User Func", $iButtonWidth_2, $aiGUISize[1] - 20, $iButtonWidth_2, 20)
$iButtonWidth_Var = $iButtonWidth_2
$iOffset = $iButtonWidth_2 * 2
EndIf
$idExit_Script = GUICtrlCreateButton("Exit Script", $iOffset, $aiGUISize[1] - 20, $iButtonWidth_Var, 20)
$idData_Label = GUICtrlCreateLabel($sDisplayData, 0, $aiGUISize[1] - 20, $iButtonWidth_Var, 18, BitOR($_ARRAYCONSTANT_SS_CENTER, $_ARRAYCONSTANT_SS_CENTERIMAGE))
Else
$idData_Label = GUICtrlCreateLabel($sDisplayData, 0, $aiGUISize[1] - 20, $aiGUISize[0], 18, BitOR($_ARRAYCONSTANT_SS_CENTER, $_ARRAYCONSTANT_SS_CENTERIMAGE))
EndIf
If $_g_ArrayDisplay_iTranspose Or $sArrayRange Then
GUICtrlSetColor($idData_Label, 0xFF0000)
GUICtrlSetTip($idData_Label, $sTipData)
EndIf
GUICtrlSetResizing($idCopy_ID, $_ARRAYCONSTANT_GUI_DOCKLEFT + $_ARRAYCONSTANT_GUI_DOCKBOTTOM + $_ARRAYCONSTANT_GUI_DOCKHEIGHT)
GUICtrlSetResizing($idCopy_Data, $_ARRAYCONSTANT_GUI_DOCKRIGHT + $_ARRAYCONSTANT_GUI_DOCKBOTTOM + $_ARRAYCONSTANT_GUI_DOCKHEIGHT)
GUICtrlSetResizing($idData_Label, $_ARRAYCONSTANT_GUI_DOCKLEFT + $_ARRAYCONSTANT_GUI_DOCKBOTTOM + $_ARRAYCONSTANT_GUI_DOCKHEIGHT)
GUICtrlSetResizing($idUser_Func, $_ARRAYCONSTANT_GUI_DOCKHCENTER + $_ARRAYCONSTANT_GUI_DOCKBOTTOM + $_ARRAYCONSTANT_GUI_DOCKHEIGHT)
GUICtrlSetResizing($idExit_Script, $_ARRAYCONSTANT_GUI_DOCKRIGHT + $_ARRAYCONSTANT_GUI_DOCKBOTTOM + $_ARRAYCONSTANT_GUI_DOCKHEIGHT)
#EndRegion Create bottom infos
GUISetState(@SW_SHOW, $hGUI)
If $fTimer > 1000 And Not $sArrayRange Then
Beep(750, 250)
ToolTip("Sorting Action can take as long as " & Ceiling($fTimer / 1000) & " sec" & @CRLF & @CRLF & "Please be patient when you click to sort a column", 50, 50, $sMsgBoxTitle, $TIP_WARNINGICON, $TIP_BALLOON)
Sleep(3000)
ToolTip("")
EndIf
#Region GUI Handling events
Local $iOnEventMode = Opt("GUIOnEventMode", 0), $aMsg
While 1
$aMsg = GUIGetMsg($_ARRAYCONSTANT_GUI_EVENT_ARRAY)
If $aMsg[1] = $hGUI Then
Switch $aMsg[0]
Case $_ARRAYCONSTANT_GUI_EVENT_CLOSE
ExitLoop
Case $idCopy_ID, $idCopy_Data
Local $iSel_Count = GUICtrlSendMsg($idListView, $_ARRAYCONSTANT_LVM_GETSELECTEDCOUNT, 0, 0)
If $iVerbose And (Not $iSel_Count) And ($_g_ArrayDisplay_iItem_End - $_g_ArrayDisplay_iItem_Start) * ($_g_ArrayDisplay_iSubItem_End - $_g_ArrayDisplay_iSubItem_Start) > 10000 Then
SplashTextOn($sMsgBoxTitle, "Copying data" & @CRLF & @CRLF & "Please be patient", 300, 100)
EndIf
Local $sClip = "", $sItem, $aSplit, $iFirstCol = 0
If $aMsg[0] = $idCopy_Data And $_g_ArrayDisplay_iDisplayRow Then $iFirstCol = 1
For $i = 0 To GUICtrlSendMsg($idListView, 0X1004, 0, 0) - 1
If $iSel_Count And Not (GUICtrlSendMsg($idListView, $_ARRAYCONSTANT_LVM_GETITEMSTATE, $i, $_ARRAYCONSTANT_LVIS_SELECTED) <> 0) Then
ContinueLoop
EndIf
$sItem = __ArrayDisplay_GetItemTextStringSelected($idListView, $i, $iFirstCol)
If $aMsg[0] = $idCopy_ID And Not $_g_ArrayDisplay_iDisplayRow Then
$sItem = $ARRAYDISPLAY_ROWPREFIX & " " & ($i + $_g_ArrayDisplay_iItem_Start) & $sCurr_Separator & $sItem
EndIf
If $iCW_ColWidth Then
$aSplit = StringSplit($sItem, $sCurr_Separator)
$sItem = ""
For $j = 1 To $aSplit[0]
$sItem &= StringFormat("%-" & $iCW_ColWidth + 1 & "s", StringLeft($aSplit[$j], $iCW_ColWidth))
Next
Else
$sItem = StringReplace($sItem, $sCurr_Separator, $vUser_Separator)
EndIf
$sClip &= $sItem & @CRLF
Next
$sItem = $sHeader
If $aMsg[0] = $idCopy_ID Then
$sItem = $sHeader
If Not $_g_ArrayDisplay_iDisplayRow Then
$sItem = "Row" & $sCurr_Separator & $sItem
EndIf
If $iCW_ColWidth Then
$aSplit = StringSplit($sItem, $sCurr_Separator)
$sItem = ""
For $j = 1 To $aSplit[0]
$sItem &= StringFormat("%-" & $iCW_ColWidth + 1 & "s", StringLeft($aSplit[$j], $iCW_ColWidth))
Next
Else
$sItem = StringReplace($sItem, $sCurr_Separator, $vUser_Separator)
EndIf
$sClip = $sItem & @CRLF & $sClip
EndIf
ClipPut($sClip)
SplashOff()
GUICtrlSetState($idListView, $_ARRAYCONSTANT_GUI_FOCUS)
Case $idListView
$iColumn = GUICtrlGetState($idListView)
If Not IsArray($_g_ArrayDisplay_aIndexes[$iColumn + Not $_g_ArrayDisplay_iDisplayRow]) Then
__ArrayDisplay_SortIndexes($iColumn + Not $_g_ArrayDisplay_iDisplayRow)
EndIf
If $iColumn <> $iColumnPrev Then
__ArrayDisplay_HeaderSetItemFormat($hHeader, $iColumnPrev, 0x00004000 + $iColAlign / 2)
If $_g_ArrayDisplay_iDisplayRow And $iColumn = 0 Then
$_g_ArrayDisplay_aIndex = $_g_ArrayDisplay_aIndexes[0]
Else
$_g_ArrayDisplay_aIndex = $_g_ArrayDisplay_aIndexes[$iColumn + Not $_g_ArrayDisplay_iDisplayRow]
EndIf
EndIf
$_g_ArrayDisplay_iSortDir = ($iColumn = $iColumnPrev) ? $_g_ArrayDisplay_iSortDir = 0x00000400 ? 0x00000200 : 0x00000400 : 0x00000400
__ArrayDisplay_HeaderSetItemFormat($hHeader, $iColumn, 0x00004000 + $_g_ArrayDisplay_iSortDir + $iColAlign / 2)
GUICtrlSendMsg($idListView, (0x1000 + 140), $iColumn, 0)
GUICtrlSendMsg($idListView, (0x1000 + 47), $_g_ArrayDisplay_nRows, 0)
$iColumnPrev = $iColumn
Case $idUser_Func
Local $aiSelItems[1] = [0]
For $i = 0 To GUICtrlSendMsg($idListView, 0x1004, 0, 0) - 1
If (GUICtrlSendMsg($idListView, $_ARRAYCONSTANT_LVM_GETITEMSTATE, $i, $_ARRAYCONSTANT_LVIS_SELECTED) <> 0) Then
$aiSelItems[0] += 1
ReDim $aiSelItems[$aiSelItems[0] + 1]
$aiSelItems[$aiSelItems[0]] = $i + $_g_ArrayDisplay_iItem_Start
EndIf
Next
$hUser_Function($_g_ArrayDisplay_aArray, $aiSelItems)
$_g_ArrayDisplay_bUserFunc = False
__ArrayDisplay_CleanUp($hGUI, $iCoordMode, $iOnEventMode, $_iCallerError, $_iCallerExtended, $p__ArrayDisplay_NotifyHandler)
Return SetError($_iCallerError, $_iCallerExtended, -1)
Case $idExit_Script
GUIDelete($hGUI)
Exit
EndSwitch
EndIf
WEnd
#EndRegion GUI Handling events
__ArrayDisplay_CleanUp($hGUI, $iCoordMode, $iOnEventMode, $_iCallerError, $_iCallerExtended, $p__ArrayDisplay_NotifyHandler)
Return SetError($_iCallerError, $_iCallerExtended, 1)
EndFunc
Func __ArrayDisplay_CleanUp($hGUI, $iCoordMode, $iOnEventMode, $_iCallerError, $_iCallerExtended, $p__ArrayDisplay_NotifyHandler)
DllCall("comctl32.dll", "bool", "RemoveWindowSubclass", "hwnd", $hGUI, "ptr", $p__ArrayDisplay_NotifyHandler, "uint_ptr", 0)
$_g_ArrayDisplay_aIndex = 0
Dim $_g_ArrayDisplay_aIndexes[1]
GUIDelete($hGUI)
Opt("GUICoordMode", $iCoordMode)
Opt("GUIOnEventMode", $iOnEventMode)
Return SetError($_iCallerError, $_iCallerExtended, 1)
EndFunc
Func __ArrayDisplay_NotifyHandler($hWnd, $iMsg, $wParam, $lParam, $iSubclassId, $pData)
If $iMsg <> 0x004E Then Return DllCall("comctl32.dll", "lresult", "DefSubclassProc", "hwnd", $hWnd, "uint", $iMsg, "wparam", $wParam, "lparam", $lParam)[0]
Local Static $tagNMHDR = "struct;hwnd hWndFrom;uint_ptr IDFrom;INT Code;endstruct"
Local Static $tagNMLVDISPINFO = $tagNMHDR & ";" & $_ARRAYCONSTANT_tagLVITEM
Local $tNMLVDISPINFO = DllStructCreate($tagNMLVDISPINFO, $lParam)
Switch HWnd(DllStructGetData($tNMLVDISPINFO, "hWndFrom"))
Case $_g_ArrayDisplay_hListView
Switch DllStructGetData($tNMLVDISPINFO, "Code")
Case -177
Local Static $tText = DllStructCreate("wchar[4096]"), $pText = DllStructGetPtr($tText)
Local $iItem = DllStructGetData($tNMLVDISPINFO, "Item")
Local $iRow = ($_g_ArrayDisplay_iSortDir = 0x00000400) ? $_g_ArrayDisplay_aIndex[$iItem] : $_g_ArrayDisplay_aIndex[$_g_ArrayDisplay_nRows - 1 - $iItem]
Local $iCol = DllStructGetData($tNMLVDISPINFO, "SubItem")
Local $sTemp
If $_g_ArrayDisplay_iDisplayRow = 0 Then
$sTemp = __ArrayDisplay_GetData($iRow, $iCol)
DllStructSetData($tText, 1, $sTemp)
DllStructSetData($tNMLVDISPINFO, "Text", $pText)
Else
If $iCol = 0 Then
If $_g_ArrayDisplay_iTranspose Then
Local $sCaptionCplt = ""
If $iRow + $_g_ArrayDisplay_iItem_Start < UBound($_g_ArrayDisplay_asHeader)  And StringStripWS($_g_ArrayDisplay_asHeader[$iRow + $_g_ArrayDisplay_iItem_Start], 1 + 2) <> "" Then
$sCaptionCplt = " (" & StringStripWS($_g_ArrayDisplay_asHeader[$iRow + $_g_ArrayDisplay_iItem_Start], 1 + 2)
If StringRight($sCaptionCplt, 1) = $ARRAYDISPLAY_NUMERICSORT Then $sCaptionCplt = StringTrimRight($sCaptionCplt, 1)
$sCaptionCplt &= ")"
EndIf
DllStructSetData($tText, 1, "Col " & ($iRow + $_g_ArrayDisplay_iItem_Start) & $sCaptionCplt)
Else
DllStructSetData($tText, 1, $ARRAYDISPLAY_ROWPREFIX & " " & $iRow + $_g_ArrayDisplay_iItem_Start)
EndIf
DllStructSetData($tNMLVDISPINFO, "Text", $pText)
Else
$sTemp = __ArrayDisplay_GetData($iRow, $iCol - 1)
DllStructSetData($tText, 1, $sTemp)
DllStructSetData($tNMLVDISPINFO, "Text", $pText)
EndIf
EndIf
Return
EndSwitch
EndSwitch
Return DllCall("comctl32.dll", "lresult", "DefSubclassProc", "hwnd", $hWnd, "uint", $iMsg, "wparam", $wParam, "lparam", $lParam)[0]
#forceref $iSubclassId, $pData
EndFunc
Func __ArrayDisplay_GetData($iRow, $iCol)
Local $sTemp
If $_g_ArrayDisplay_iDims = 2 Then
$sTemp = $_g_ArrayDisplay_aArray[$iRow][$iCol]
Else
$sTemp = $_g_ArrayDisplay_aArray[$iRow]
EndIf
Switch VarGetType($sTemp)
Case "Array"
Local $sSubscript = ""
For $i = 1 To UBound($sTemp, 0)
$sSubscript = "[" & UBound($sTemp, $i) & "]"
Next
$sTemp = "{Array" & $sSubscript & "}"
Case "Map"
$sTemp = "{Map[" & UBound($sTemp) & "]}"
Case "Object"
$sTemp = "{Object}"
EndSwitch
If StringLen($sTemp) > 4095 Then $sTemp = StringLeft($sTemp, 4095)
Return $sTemp
EndFunc
Func __ArrayDisplay_SortIndexes($iColStart, $iColEnd = $iColStart)
Dim $_g_ArrayDisplay_aIndex[$_g_ArrayDisplay_nRows]
If $iColEnd = -1 Then
Dim $_g_ArrayDisplay_aIndexes[$_g_ArrayDisplay_nCols + $_g_ArrayDisplay_iDisplayRow + 1]
For $i = 0 To $_g_ArrayDisplay_nRows - 1
$_g_ArrayDisplay_aIndex[$i] = $i
Next
$_g_ArrayDisplay_aIndexes[0] = $_g_ArrayDisplay_aIndex
EndIf
If $iColStart = -1 Then
$iColStart = 1
$iColEnd = $_g_ArrayDisplay_nCols
EndIf
If $iColStart Then
Local $tIndex
For $i = $iColStart To $iColEnd
$tIndex = __ArrayDisplay_GetSortColStruct($_g_ArrayDisplay_aArray, $i - 1)
For $j = 0 To $_g_ArrayDisplay_nRows - 1
$_g_ArrayDisplay_aIndex[$j] = DllStructGetData($tIndex, 1, $j + 1)
Next
$_g_ArrayDisplay_aIndexes[$i] = $_g_ArrayDisplay_aIndex
Next
EndIf
EndFunc
Func __ArrayDisplay_GetSortColStruct(Const ByRef $aArray, $iCol)
If UBound($aArray, $UBOUND_DIMENSIONS) < 1 Or UBound($aArray, $UBOUND_DIMENSIONS) > 2 Then
Return SetError(6, 0, 0)
EndIf
Return __ArrayDisplay_SortArrayStruct($aArray, $iCol)
EndFunc
Func __ArrayDisplay_SortArrayStruct(Const ByRef $aArray, $iCol)
Local $iDims = UBound($aArray, $UBOUND_DIMENSIONS)
Local $tIndex = DllStructCreate("uint[" & $_g_ArrayDisplay_nRows & "]")
Local $pIndex = DllStructGetPtr($tIndex)
Static $hDll = DllOpen("kernel32.dll")
Static $hDllComp = DllOpen("shlwapi.dll")
Local $lo, $hi, $mi, $r, $nVal1, $nVal2
For $i = 1 To $_g_ArrayDisplay_nRows - 1
$lo = 0
$hi = $i - 1
Do
$mi = Int(($lo + $hi) / 2)
If Not $_g_ArrayDisplay_iTranspose And $_g_ArrayDisplay_aNumericSort[$iCol] Then
If $iDims = 1 Then
$nVal1 = Number($aArray[$i])
$nVal2 = Number($aArray[DllStructGetData($tIndex, 1, $mi + 1)])
Else
$nVal1 = Number($aArray[$i][$iCol])
$nVal2 = Number($aArray[DllStructGetData($tIndex, 1, $mi + 1)][$iCol])
EndIf
$r = $nVal1 < $nVal2 ? -1 : $nVal1 > $nVal2 ? 1 : 0
Else
If $iDims = 1 Then
$r = DllCall($hDllComp, 'int', 'StrCmpLogicalW', 'wstr', String($aArray[$i]), 'wstr', String($aArray[DllStructGetData($tIndex, 1, $mi + 1)]))[0]
Else
$r = DllCall($hDllComp, 'int', 'StrCmpLogicalW', 'wstr', String($aArray[$i][$iCol]), 'wstr', String($aArray[DllStructGetData($tIndex, 1, $mi + 1)][$iCol]))[0]
EndIf
EndIf
Switch $r
Case -1
$hi = $mi - 1
Case 1
$lo = $mi + 1
Case 0
ExitLoop
EndSwitch
Until $lo > $hi
DllCall($hDll, "none", "RtlMoveMemory", "struct*", $pIndex + ($mi + 1) * 4, "struct*", $pIndex + $mi * 4, "ulong_ptr", ($i - $mi) * 4)
DllStructSetData($tIndex, 1, $i, $mi + 1 + ($lo = $mi + 1))
Next
Return $tIndex
EndFunc
Func __ArrayDisplay_CreateSubArray()
Local $nRows = $_g_ArrayDisplay_iItem_End - $_g_ArrayDisplay_iItem_Start + 1
Local $nCols = $_g_ArrayDisplay_iSubItem_End - $_g_ArrayDisplay_iSubItem_Start + 1
Local $iRow = -1, $iCol, $iTemp, $aTemp
If $_g_ArrayDisplay_iTranspose Then
Dim $aTemp[$nCols][$nRows]
For $i = $_g_ArrayDisplay_iItem_Start To $_g_ArrayDisplay_iItem_End
$iRow += 1
$iCol = -1
For $j = $_g_ArrayDisplay_iSubItem_Start To $_g_ArrayDisplay_iSubItem_End
$iCol += 1
$aTemp[$iCol][$iRow] = $_g_ArrayDisplay_aArray[$i][$j]
Next
Next
$iTemp = $_g_ArrayDisplay_iItem_Start
$_g_ArrayDisplay_iItem_Start = $_g_ArrayDisplay_iSubItem_Start
$_g_ArrayDisplay_iSubItem_Start = $iTemp
$iTemp = $_g_ArrayDisplay_iItem_End
$_g_ArrayDisplay_iItem_End = $_g_ArrayDisplay_iSubItem_End
$_g_ArrayDisplay_iSubItem_End = $iTemp
$_g_ArrayDisplay_nRows = $nCols
$_g_ArrayDisplay_nCols = $nRows
Else
If $_g_ArrayDisplay_iDims = 1 Then
Dim $aTemp[$nRows]
For $i = $_g_ArrayDisplay_iItem_Start To $_g_ArrayDisplay_iItem_End
$iRow += 1
$aTemp[$iRow] = $_g_ArrayDisplay_aArray[$i]
Next
Else
Dim $aTemp[$nRows][$nCols]
For $i = $_g_ArrayDisplay_iItem_Start To $_g_ArrayDisplay_iItem_End
$iRow += 1
$iCol = -1
For $j = $_g_ArrayDisplay_iSubItem_Start To $_g_ArrayDisplay_iSubItem_End
$iCol += 1
$aTemp[$iRow][$iCol] = $_g_ArrayDisplay_aArray[$i][$j]
Next
Next
$_g_ArrayDisplay_nCols = $nCols
EndIf
$_g_ArrayDisplay_nRows = $nRows
EndIf
Return $aTemp
EndFunc
Func __ArrayDisplay_HeaderSetItemFormat($hWnd, $iIndex, $iFormat)
Local Static $tHDItem = DllStructCreate("uint Mask;int XY;ptr Text;handle hBMP;int TextMax;int Fmt;lparam Param;int Image;int Order;uint Type;ptr pFilter;uint State")
DllStructSetData($tHDItem, "Mask", 0x00000004)
DllStructSetData($tHDItem, "Fmt", $iFormat)
Local $aResult = DllCall("user32.dll", "lresult", "SendMessageW", "hwnd", $hWnd, "uint", 0x120C, "wparam", $iIndex, "struct*", $tHDItem)
Return $aResult[0] <> 0
EndFunc
Func __ArrayDisplay_GetItemText($idListView, $iIndex, $iSubItem = 0)
Local $tBuffer = DllStructCreate("wchar Text[4096]")
Local $pBuffer = DllStructGetPtr($tBuffer)
Local $tItem = DllStructCreate($_ARRAYCONSTANT_tagLVITEM)
DllStructSetData($tItem, "SubItem", $iSubItem)
DllStructSetData($tItem, "TextMax", 4096)
DllStructSetData($tItem, "Text", $pBuffer)
If IsHWnd($idListView) Then
DllCall("user32.dll", "lresult", "SendMessageW", "hwnd", $idListView, "uint", 0x1073, "wparam", $iIndex, "struct*", $tItem)
Else
Local $pItem = DllStructGetPtr($tItem)
GUICtrlSendMsg($idListView, 0x1073, $iIndex, $pItem)
EndIf
Return DllStructGetData($tBuffer, "Text")
EndFunc
Func __ArrayDisplay_GetItemTextStringSelected($idListView, $iItem, $iFirstCol)
Local $sRow = "", $sSeparatorChar = Opt('GUIDataSeparatorChar')
Local $iSelected = $iItem
Local $hHeader = HWnd(GUICtrlSendMsg($idListView, 0x101F, 0, 0))
Local $nCol = DllCall("user32.dll", "lresult", "SendMessageW", "hwnd", $hHeader, "uint", 0x1200, "wparam", 0, "lparam", 0)[0]
For $x = $iFirstCol To $nCol - 1
$sRow &= __ArrayDisplay_GetItemText($idListView, $iSelected, $x) & $sSeparatorChar
Next
Return StringTrimRight($sRow, 1)
EndFunc
Func __ArrayDisplay_JustifyColumn($idListView, $iIndex, $iAlign = -1)
Local $tColumn = DllStructCreate("uint Mask;int Fmt;int CX;ptr Text;int TextMax;int SubItem;int Image;int Order;int cxMin;int cxDefault;int cxIdeal")
If $iAlign < 0 Or $iAlign > 2 Then $iAlign = 0
DllStructSetData($tColumn, "Mask", 0x01)
DllStructSetData($tColumn, "Fmt", $iAlign)
Local $pColumn = DllStructGetPtr($tColumn)
Local $iRet = GUICtrlSendMsg($idListView, 0x1060, $iIndex, $pColumn)
Return $iRet <> 0
EndFunc
Global Enum $ARRAYFILL_FORCE_DEFAULT, $ARRAYFILL_FORCE_SINGLEITEM, $ARRAYFILL_FORCE_INT, $ARRAYFILL_FORCE_NUMBER,  $ARRAYFILL_FORCE_PTR, $ARRAYFILL_FORCE_HWND, $ARRAYFILL_FORCE_STRING, $ARRAYFILL_FORCE_BOOLEAN
Global Enum $ARRAYUNIQUE_NOCOUNT, $ARRAYUNIQUE_COUNT
Global Enum $ARRAYUNIQUE_AUTO, $ARRAYUNIQUE_FORCE32, $ARRAYUNIQUE_FORCE64, $ARRAYUNIQUE_MATCH, $ARRAYUNIQUE_DISTINCT
Func _ArrayAdd(ByRef $aArray, $vValue, $iStart = 0, $sDelim_Item = "|", $sDelim_Row = @CRLF, $iForce = $ARRAYFILL_FORCE_DEFAULT)
If $iStart = Default Then $iStart = 0
If $sDelim_Item = Default Then $sDelim_Item = "|"
If $sDelim_Row = Default Then $sDelim_Row = @CRLF
If $iForce = Default Then $iForce = $ARRAYFILL_FORCE_DEFAULT
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS)
Local $hDataType = 0
Switch $iForce
Case $ARRAYFILL_FORCE_INT
$hDataType = Int
Case $ARRAYFILL_FORCE_NUMBER
$hDataType = Number
Case $ARRAYFILL_FORCE_PTR
$hDataType = Ptr
Case $ARRAYFILL_FORCE_HWND
$hDataType = Hwnd
Case $ARRAYFILL_FORCE_STRING
$hDataType = String
Case $ARRAYFILL_FORCE_BOOLEAN
$hDataType = "Boolean"
EndSwitch
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
If $iForce = $ARRAYFILL_FORCE_SINGLEITEM Then
ReDim $aArray[$iDim_1 + 1]
$aArray[$iDim_1] = $vValue
Return $iDim_1
EndIf
If IsArray($vValue) Then
If UBound($vValue, $UBOUND_DIMENSIONS) <> 1 Then Return SetError(5, 0, -1)
$hDataType = 0
Else
Local $aTmp = StringSplit($vValue, $sDelim_Item, $STR_NOCOUNT + $STR_ENTIRESPLIT)
If UBound($aTmp, $UBOUND_ROWS) = 1 Then
$aTmp[0] = $vValue
EndIf
$vValue = $aTmp
EndIf
Local $iAdd = UBound($vValue, $UBOUND_ROWS)
ReDim $aArray[$iDim_1 + $iAdd]
For $i = 0 To $iAdd - 1
If String($hDataType) = "Boolean" Then
Switch $vValue[$i]
Case "True", "1"
$aArray[$iDim_1 + $i] = True
Case "False", "0", ""
$aArray[$iDim_1 + $i] = False
EndSwitch
ElseIf IsFunc($hDataType) Then
$aArray[$iDim_1 + $i] = $hDataType($vValue[$i])
Else
$aArray[$iDim_1 + $i] = $vValue[$i]
EndIf
Next
Return $iDim_1 + $iAdd - 1
Case 2
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS)
If $iStart < 0 Or $iStart > $iDim_2 - 1 Then Return SetError(4, 0, -1)
Local $iValDim_1, $iValDim_2 = 0, $iColCount
If IsArray($vValue) Then
If UBound($vValue, $UBOUND_DIMENSIONS) <> 2 Then Return SetError(5, 0, -1)
$iValDim_1 = UBound($vValue, $UBOUND_ROWS)
$iValDim_2 = UBound($vValue, $UBOUND_COLUMNS)
$hDataType = 0
Else
Local $aSplit_1 = StringSplit($vValue, $sDelim_Row, $STR_NOCOUNT + $STR_ENTIRESPLIT)
$iValDim_1 = UBound($aSplit_1, $UBOUND_ROWS)
Local $aTmp[$iValDim_1][0], $aSplit_2
For $i = 0 To $iValDim_1 - 1
$aSplit_2 = StringSplit($aSplit_1[$i], $sDelim_Item, $STR_NOCOUNT + $STR_ENTIRESPLIT)
$iColCount = UBound($aSplit_2)
If $iColCount > $iValDim_2 Then
$iValDim_2 = $iColCount
ReDim $aTmp[$iValDim_1][$iValDim_2]
EndIf
For $j = 0 To $iColCount - 1
$aTmp[$i][$j] = $aSplit_2[$j]
Next
Next
$vValue = $aTmp
EndIf
If UBound($vValue, $UBOUND_COLUMNS) + $iStart > UBound($aArray, $UBOUND_COLUMNS) Then Return SetError(3, 0, -1)
ReDim $aArray[$iDim_1 + $iValDim_1][$iDim_2]
For $iWriteTo_Index = 0 To $iValDim_1 - 1
For $j = 0 To $iDim_2 - 1
If $j < $iStart Then
$aArray[$iWriteTo_Index + $iDim_1][$j] = ""
ElseIf $j - $iStart > $iValDim_2 - 1 Then
$aArray[$iWriteTo_Index + $iDim_1][$j] = ""
Else
If String($hDataType) = "Boolean" Then
Switch $vValue[$iWriteTo_Index][$j - $iStart]
Case "True", "1"
$aArray[$iWriteTo_Index + $iDim_1][$j] = True
Case "False", "0", ""
$aArray[$iWriteTo_Index + $iDim_1][$j] = False
EndSwitch
ElseIf IsFunc($hDataType) Then
$aArray[$iWriteTo_Index + $iDim_1][$j] = $hDataType($vValue[$iWriteTo_Index][$j - $iStart])
Else
$aArray[$iWriteTo_Index + $iDim_1][$j] = $vValue[$iWriteTo_Index][$j - $iStart]
EndIf
EndIf
Next
Next
Case Else
Return SetError(2, 0, -1)
EndSwitch
Return UBound($aArray, $UBOUND_ROWS) - 1
EndFunc
Func _ArrayBinarySearch(Const ByRef $aArray, $vValue, $iStart = 0, $iEnd = 0, $iColumn = 0)
If $iStart = Default Then $iStart = 0
If $iEnd = Default Then $iEnd = 0
If $iColumn = Default Then $iColumn = 0
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS)
If $iDim_1 = 0 Then Return SetError(6, 0, -1)
If $iEnd < 1 Or $iEnd > $iDim_1 - 1 Then $iEnd = $iDim_1 - 1
If $iStart < 0 Then $iStart = 0
If $iStart > $iEnd Then Return SetError(4, 0, -1)
Local $iMid = Int(($iEnd + $iStart) / 2)
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
If $aArray[$iStart] > $vValue Or $aArray[$iEnd] < $vValue Then Return SetError(2, 0, -1)
While $iStart <= $iMid And $vValue <> $aArray[$iMid]
If $vValue < $aArray[$iMid] Then
$iEnd = $iMid - 1
Else
$iStart = $iMid + 1
EndIf
$iMid = Int(($iEnd + $iStart) / 2)
WEnd
If $iStart > $iEnd Then Return SetError(3, 0, -1)
Case 2
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS) - 1
If $iColumn < 0 Or $iColumn > $iDim_2 Then Return SetError(7, 0, -1)
If $aArray[$iStart][$iColumn] > $vValue Or $aArray[$iEnd][$iColumn] < $vValue Then Return SetError(2, 0, -1)
While $iStart <= $iMid And $vValue <> $aArray[$iMid][$iColumn]
If $vValue < $aArray[$iMid][$iColumn] Then
$iEnd = $iMid - 1
Else
$iStart = $iMid + 1
EndIf
$iMid = Int(($iEnd + $iStart) / 2)
WEnd
If $iStart > $iEnd Then Return SetError(3, 0, -1)
Case Else
Return SetError(5, 0, -1)
EndSwitch
Return $iMid
EndFunc
Func _ArrayColDelete(ByRef $aArray, $iColumn, $bConvert = False)
If $bConvert = Default Then $bConvert = False
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS)
If UBound($aArray, $UBOUND_DIMENSIONS) <> 2 Then Return SetError(2, 0, -1)
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS)
Switch $iDim_2
Case 2
If $iColumn < 0 Or $iColumn > 1 Then Return SetError(3, 0, -1)
If $bConvert Then
Local $aTempArray[$iDim_1]
For $i = 0 To $iDim_1 - 1
$aTempArray[$i] = $aArray[$i][(Not $iColumn)]
Next
$aArray = $aTempArray
Else
ContinueCase
EndIf
Case Else
If $iColumn < 0 Or $iColumn > $iDim_2 - 1 Then Return SetError(3, 0, -1)
For $i = 0 To $iDim_1 - 1
For $j = $iColumn To $iDim_2 - 2
$aArray[$i][$j] = $aArray[$i][$j + 1]
Next
Next
ReDim $aArray[$iDim_1][$iDim_2 - 1]
EndSwitch
Return UBound($aArray, $UBOUND_COLUMNS)
EndFunc
Func _ArrayColInsert(ByRef $aArray, $iColumn)
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS)
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
Local $aTempArray[$iDim_1][2]
Switch $iColumn
Case 0, 1
For $i = 0 To $iDim_1 - 1
$aTempArray[$i][(Not $iColumn)] = $aArray[$i]
Next
Case Else
Return SetError(3, 0, -1)
EndSwitch
$aArray = $aTempArray
Case 2
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS)
If $iColumn < 0 Or $iColumn > $iDim_2 Then Return SetError(3, 0, -1)
ReDim $aArray[$iDim_1][$iDim_2 + 1]
For $i = 0 To $iDim_1 - 1
For $j = $iDim_2 To $iColumn + 1 Step -1
$aArray[$i][$j] = $aArray[$i][$j - 1]
Next
$aArray[$i][$iColumn] = ""
Next
Case Else
Return SetError(2, 0, -1)
EndSwitch
Return UBound($aArray, $UBOUND_COLUMNS)
EndFunc
Func _ArrayCombinations(Const ByRef $aArray, $iSet, $sDelimiter = "")
If $sDelimiter = Default Then $sDelimiter = ""
If Not IsArray($aArray) Then Return SetError(1, 0, 0)
If UBound($aArray, $UBOUND_DIMENSIONS) <> 1 Then Return SetError(2, 0, 0)
Local $iN = UBound($aArray)
Local $iR = $iSet
Local $aIdx[$iR]
For $i = 0 To $iR - 1
$aIdx[$i] = $i
Next
Local $iTotal = __Array_Combinations($iN, $iR)
Local $iLeft = $iTotal
Local $aResult[$iTotal + 1]
$aResult[0] = $iTotal
Local $iCount = 1
While $iLeft > 0
__Array_GetNext($iN, $iR, $iLeft, $iTotal, $aIdx)
For $i = 0 To $iSet - 1
$aResult[$iCount] &= $aArray[$aIdx[$i]] & $sDelimiter
Next
If $sDelimiter <> "" Then $aResult[$iCount] = StringTrimRight($aResult[$iCount], 1)
$iCount += 1
WEnd
Return $aResult
EndFunc
Func _ArrayConcatenate(ByRef $aArrayTarget, Const ByRef $aArraySource, $iStart = 0)
If $iStart = Default Then $iStart = 0
If Not IsArray($aArrayTarget) Then Return SetError(1, 0, -1)
If Not IsArray($aArraySource) Then Return SetError(2, 0, -1)
Local $iDim_Total_Tgt = UBound($aArrayTarget, $UBOUND_DIMENSIONS)
Local $iDim_Total_Src = UBound($aArraySource, $UBOUND_DIMENSIONS)
Local $iDim_1_Tgt = UBound($aArrayTarget, $UBOUND_ROWS)
Local $iDim_1_Src = UBound($aArraySource, $UBOUND_ROWS)
If $iStart < 0 Or $iStart > $iDim_1_Src - 1 Then Return SetError(6, 0, -1)
Switch $iDim_Total_Tgt
Case 1
If $iDim_Total_Src <> 1 Then Return SetError(4, 0, -1)
ReDim $aArrayTarget[$iDim_1_Tgt + $iDim_1_Src - $iStart]
For $i = $iStart To $iDim_1_Src - 1
$aArrayTarget[$iDim_1_Tgt + $i - $iStart] = $aArraySource[$i]
Next
Case 2
If $iDim_Total_Src <> 2 Then Return SetError(4, 0, -1)
Local $iDim_2_Tgt = UBound($aArrayTarget, $UBOUND_COLUMNS)
If UBound($aArraySource, $UBOUND_COLUMNS) <> $iDim_2_Tgt Then Return SetError(5, 0, -1)
ReDim $aArrayTarget[$iDim_1_Tgt + $iDim_1_Src - $iStart][$iDim_2_Tgt]
For $i = $iStart To $iDim_1_Src - 1
For $j = 0 To $iDim_2_Tgt - 1
$aArrayTarget[$iDim_1_Tgt + $i - $iStart][$j] = $aArraySource[$i][$j]
Next
Next
Case Else
Return SetError(3, 0, -1)
EndSwitch
Return UBound($aArrayTarget, $UBOUND_ROWS)
EndFunc
Func _ArrayDelete(ByRef $aArray, $vRange)
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS) - 1
If IsArray($vRange) Then
If UBound($vRange, $UBOUND_DIMENSIONS) <> 1 Or UBound($vRange, $UBOUND_ROWS) < 2 Then Return SetError(4, 0, -1)
Else
Local $iNumber, $aSplit_1, $aSplit_2
$vRange = StringStripWS($vRange, 8)
$aSplit_1 = StringSplit($vRange, ";")
$vRange = ""
For $i = 1 To $aSplit_1[0]
If Not StringRegExp($aSplit_1[$i], "^\d+(-\d+)?$") Then Return SetError(3, 0, -1)
$aSplit_2 = StringSplit($aSplit_1[$i], "-")
Switch $aSplit_2[0]
Case 1
$vRange &= $aSplit_2[1] & ";"
Case 2
If Number($aSplit_2[2]) >= Number($aSplit_2[1]) Then
$iNumber = $aSplit_2[1] - 1
Do
$iNumber += 1
$vRange &= $iNumber & ";"
Until $iNumber = $aSplit_2[2]
EndIf
EndSwitch
Next
$vRange = StringSplit(StringTrimRight($vRange, 1), ";")
EndIf
For $i = 1 To $vRange[0]
$vRange[$i] = Number($vRange[$i])
Next
If $vRange[1] < 0 Or $vRange[$vRange[0]] > $iDim_1 Then Return SetError(5, 0, -1)
Local $iCopyTo_Index = 0
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
For $i = 1 To $vRange[0]
$aArray[$vRange[$i]] = ChrW(0xFAB1)
Next
For $iReadFrom_Index = 0 To $iDim_1
If $aArray[$iReadFrom_Index] == ChrW(0xFAB1) Then
ContinueLoop
Else
If $iReadFrom_Index <> $iCopyTo_Index Then
$aArray[$iCopyTo_Index] = $aArray[$iReadFrom_Index]
EndIf
$iCopyTo_Index += 1
EndIf
Next
ReDim $aArray[$iDim_1 - $vRange[0] + 1]
Case 2
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS) - 1
For $i = 1 To $vRange[0]
$aArray[$vRange[$i]][0] = ChrW(0xFAB1)
Next
For $iReadFrom_Index = 0 To $iDim_1
If $aArray[$iReadFrom_Index][0] == ChrW(0xFAB1) Then
ContinueLoop
Else
If $iReadFrom_Index <> $iCopyTo_Index Then
For $j = 0 To $iDim_2
$aArray[$iCopyTo_Index][$j] = $aArray[$iReadFrom_Index][$j]
Next
EndIf
$iCopyTo_Index += 1
EndIf
Next
ReDim $aArray[$iDim_1 - $vRange[0] + 1][$iDim_2 + 1]
Case Else
Return SetError(2, 0, False)
EndSwitch
Return UBound($aArray, $UBOUND_ROWS)
EndFunc
Func _ArrayDisplay(Const ByRef $aArray, $sTitle = Default, $sArrayRange = Default, $iFlags = Default, $vUser_Separator = Default, $sHeader = Default, $iDesired_Colwidth = Default)
#forceref $vUser_Separator
Local $iRet = __ArrayDisplay_Share($aArray, $sTitle, $sArrayRange, $iFlags, Default, $sHeader, $iDesired_Colwidth, 0, False)
Return SetError(@error, @extended, $iRet)
EndFunc
Func _ArrayExtract(Const ByRef $aArray, $iStart_Row = -1, $iEnd_Row = -1, $iStart_Col = -1, $iEnd_Col = -1)
If $iStart_Row = Default Then $iStart_Row = -1
If $iEnd_Row = Default Then $iEnd_Row = -1
If $iStart_Col = Default Then $iStart_Col = -1
If $iEnd_Col = Default Then $iEnd_Col = -1
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS) - 1
If $iEnd_Row = -1 Then $iEnd_Row = $iDim_1
If $iStart_Row = -1 Then $iStart_Row = 0
If $iStart_Row < -1 Or $iEnd_Row < -1 Then Return SetError(3, 0, -1)
If $iStart_Row > $iDim_1 Or $iEnd_Row > $iDim_1 Then Return SetError(3, 0, -1)
If $iStart_Row > $iEnd_Row Then Return SetError(4, 0, -1)
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
Local $aRetArray[$iEnd_Row - $iStart_Row + 1]
For $i = 0 To $iEnd_Row - $iStart_Row
$aRetArray[$i] = $aArray[$i + $iStart_Row]
Next
Return $aRetArray
Case 2
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS) - 1
If $iEnd_Col = -1 Then $iEnd_Col = $iDim_2
If $iStart_Col = -1 Then $iStart_Col = 0
If $iStart_Col < -1 Or $iEnd_Col < -1 Then Return SetError(5, 0, -1)
If $iStart_Col > $iDim_2 Or $iEnd_Col > $iDim_2 Then Return SetError(5, 0, -1)
If $iStart_Col > $iEnd_Col Then Return SetError(6, 0, -1)
If $iStart_Col = $iEnd_Col Then
Local $aRetArray[$iEnd_Row - $iStart_Row + 1]
Else
Local $aRetArray[$iEnd_Row - $iStart_Row + 1][$iEnd_Col - $iStart_Col + 1]
EndIf
For $i = 0 To $iEnd_Row - $iStart_Row
For $j = 0 To $iEnd_Col - $iStart_Col
If $iStart_Col = $iEnd_Col Then
$aRetArray[$i] = $aArray[$i + $iStart_Row][$j + $iStart_Col]
Else
$aRetArray[$i][$j] = $aArray[$i + $iStart_Row][$j + $iStart_Col]
EndIf
Next
Next
Return $aRetArray
Case Else
Return SetError(2, 0, -1)
EndSwitch
Return 1
EndFunc
Func _ArrayFindAll(Const ByRef $aArray, $vValue, $iStart = 0, $iEnd = 0, $iCase = 0, $iCompare = 0, $iSubItem = 0, $bRow = False)
If $iStart = Default Then $iStart = 0
If $iEnd = Default Then $iEnd = 0
If $iCase = Default Then $iCase = 0
If $iCompare = Default Then $iCompare = 0
If $iSubItem = Default Then $iSubItem = 0
If $bRow = Default Then $bRow = False
$iStart = _ArraySearch($aArray, $vValue, $iStart, $iEnd, $iCase, $iCompare, 1, $iSubItem, $bRow)
If @error Then Return SetError(@error, 0, -1)
Local $iIndex = 0, $avResult[UBound($aArray, ($bRow ? $UBOUND_COLUMNS : $UBOUND_ROWS))]
Do
$avResult[$iIndex] = $iStart
$iIndex += 1
$iStart = _ArraySearch($aArray, $vValue, $iStart + 1, $iEnd, $iCase, $iCompare, 1, $iSubItem, $bRow)
Until @error
ReDim $avResult[$iIndex]
Return $avResult
EndFunc
Func _ArrayFromString($sArrayStr, $sDelim_Col = "|", $sDelim_Row = @CRLF, $bForce2D = False, $iStripWS = $STR_STRIPLEADING + $STR_STRIPTRAILING)
If $sDelim_Col = Default Then $sDelim_Col = "|"
If $sDelim_Row = Default Then $sDelim_Row = @CRLF
If $bForce2D = Default Then $bForce2D = False
If $iStripWS = Default Then $iStripWS = $STR_STRIPLEADING + $STR_STRIPTRAILING
Local $aRow, $aCol = StringSplit($sArrayStr, $sDelim_Row, $STR_ENTIRESPLIT + $STR_NOCOUNT)
$aRow = StringSplit($aCol[0], $sDelim_Col, $STR_ENTIRESPLIT + $STR_NOCOUNT)
If UBound($aCol) = 1 And Not $bForce2D Then
For $m = 0 To UBound($aRow) - 1
$aRow[$m] = ($iStripWS ? StringStripWS($aRow[$m], $iStripWS) : $aRow[$m])
Next
Return $aRow
EndIf
Local $aRet[UBound($aCol)][UBound($aRow)]
For $n = 0 To UBound($aCol) - 1
$aRow = StringSplit($aCol[$n], $sDelim_Col, $STR_ENTIRESPLIT + $STR_NOCOUNT)
If UBound($aRow) > UBound($aRet, 2) Then Return SetError(1)
For $m = 0 To UBound($aRow) - 1
$aRet[$n][$m] = ($iStripWS ? StringStripWS($aRow[$m], $iStripWS) : $aRow[$m])
Next
Next
Return $aRet
EndFunc
Func _ArrayInsert(ByRef $aArray, $vRange, $vValue = "", $iStart = 0, $sDelim_Item = "|", $sDelim_Row = @CRLF, $iForce = $ARRAYFILL_FORCE_DEFAULT)
If $vValue = Default Then $vValue = ""
If $iStart = Default Then $iStart = 0
If $sDelim_Item = Default Then $sDelim_Item = "|"
If $sDelim_Row = Default Then $sDelim_Row = @CRLF
If $iForce = Default Then $iForce = $ARRAYFILL_FORCE_DEFAULT
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS) - 1
Local $hDataType = 0
Switch $iForce
Case $ARRAYFILL_FORCE_INT
$hDataType = Int
Case $ARRAYFILL_FORCE_NUMBER
$hDataType = Number
Case $ARRAYFILL_FORCE_PTR
$hDataType = Ptr
Case $ARRAYFILL_FORCE_HWND
$hDataType = Hwnd
Case $ARRAYFILL_FORCE_STRING
$hDataType = String
EndSwitch
Local $aSplit_1, $aSplit_2
If IsArray($vRange) Then
If UBound($vRange, $UBOUND_DIMENSIONS) <> 1 Or UBound($vRange, $UBOUND_ROWS) < 2 Then Return SetError(4, 0, -1)
Else
Local $iNumber
$vRange = StringStripWS($vRange, 8)
$aSplit_1 = StringSplit($vRange, ";")
$vRange = ""
For $i = 1 To $aSplit_1[0]
If Not StringRegExp($aSplit_1[$i], "^\d+(-\d+)?$") Then Return SetError(3, 0, -1)
$aSplit_2 = StringSplit($aSplit_1[$i], "-")
Switch $aSplit_2[0]
Case 1
$vRange &= $aSplit_2[1] & ";"
Case 2
If Number($aSplit_2[2]) >= Number($aSplit_2[1]) Then
$iNumber = $aSplit_2[1] - 1
Do
$iNumber += 1
$vRange &= $iNumber & ";"
Until $iNumber = $aSplit_2[2]
EndIf
EndSwitch
Next
$vRange = StringSplit(StringTrimRight($vRange, 1), ";")
EndIf
For $i = 1 To $vRange[0]
$vRange[$i] = Number($vRange[$i])
Next
If $vRange[1] < 0 Or $vRange[$vRange[0]] > $iDim_1 Then Return SetError(5, 0, -1)
For $i = 2 To $vRange[0]
If $vRange[$i] < $vRange[$i - 1] Then Return SetError(3, 0, -1)
Next
Local $iCopyTo_Index = $iDim_1 + $vRange[0]
Local $iInsertPoint_Index = $vRange[0]
Local $iInsert_Index = $vRange[$iInsertPoint_Index]
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
If $iForce = $ARRAYFILL_FORCE_SINGLEITEM Then
ReDim $aArray[$iDim_1 + $vRange[0] + 1]
For $iReadFromIndex = $iDim_1 To 0 Step -1
$aArray[$iCopyTo_Index] = $aArray[$iReadFromIndex]
$iCopyTo_Index -= 1
$iInsert_Index = $vRange[$iInsertPoint_Index]
While $iReadFromIndex = $iInsert_Index
$aArray[$iCopyTo_Index] = $vValue
$iCopyTo_Index -= 1
$iInsertPoint_Index -= 1
If $iInsertPoint_Index < 1 Then ExitLoop 2
$iInsert_Index = $vRange[$iInsertPoint_Index]
WEnd
Next
Return $iDim_1 + $vRange[0] + 1
EndIf
ReDim $aArray[$iDim_1 + $vRange[0] + 1]
If IsArray($vValue) Then
If UBound($vValue, $UBOUND_DIMENSIONS) <> 1 Then Return SetError(5, 0, -1)
$hDataType = 0
Else
Local $aTmp = StringSplit($vValue, $sDelim_Item, $STR_NOCOUNT + $STR_ENTIRESPLIT)
If UBound($aTmp, $UBOUND_ROWS) = 1 Then
$aTmp[0] = $vValue
$hDataType = 0
EndIf
$vValue = $aTmp
EndIf
For $iReadFromIndex = $iDim_1 To 0 Step -1
$aArray[$iCopyTo_Index] = $aArray[$iReadFromIndex]
$iCopyTo_Index -= 1
$iInsert_Index = $vRange[$iInsertPoint_Index]
While $iReadFromIndex = $iInsert_Index
If $iInsertPoint_Index <= UBound($vValue, $UBOUND_ROWS) Then
If IsFunc($hDataType) Then
$aArray[$iCopyTo_Index] = $hDataType($vValue[$iInsertPoint_Index - 1])
Else
$aArray[$iCopyTo_Index] = $vValue[$iInsertPoint_Index - 1]
EndIf
Else
$aArray[$iCopyTo_Index] = ""
EndIf
$iCopyTo_Index -= 1
$iInsertPoint_Index -= 1
If $iInsertPoint_Index = 0 Then ExitLoop 2
$iInsert_Index = $vRange[$iInsertPoint_Index]
WEnd
Next
Case 2
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS)
If $iStart < 0 Or $iStart > $iDim_2 - 1 Then Return SetError(6, 0, -1)
Local $iValDim_1, $iValDim_2
If IsArray($vValue) Then
If UBound($vValue, $UBOUND_DIMENSIONS) <> 2 Then Return SetError(7, 0, -1)
$iValDim_1 = UBound($vValue, $UBOUND_ROWS)
$iValDim_2 = UBound($vValue, $UBOUND_COLUMNS)
$hDataType = 0
Else
$aSplit_1 = StringSplit($vValue, $sDelim_Row, $STR_NOCOUNT + $STR_ENTIRESPLIT)
$iValDim_1 = UBound($aSplit_1, $UBOUND_ROWS)
StringReplace($aSplit_1[0], $sDelim_Item, "")
$iValDim_2 = @extended + 1
Local $aTmp[$iValDim_1][$iValDim_2]
For $i = 0 To $iValDim_1 - 1
$aSplit_2 = StringSplit($aSplit_1[$i], $sDelim_Item, $STR_NOCOUNT + $STR_ENTIRESPLIT)
For $j = 0 To $iValDim_2 - 1
$aTmp[$i][$j] = $aSplit_2[$j]
Next
Next
$vValue = $aTmp
EndIf
If UBound($vValue, $UBOUND_COLUMNS) + $iStart > UBound($aArray, $UBOUND_COLUMNS) Then Return SetError(8, 0, -1)
ReDim $aArray[$iDim_1 + $vRange[0] + 1][$iDim_2]
For $iReadFromIndex = $iDim_1 To 0 Step -1
For $j = 0 To $iDim_2 - 1
$aArray[$iCopyTo_Index][$j] = $aArray[$iReadFromIndex][$j]
Next
$iCopyTo_Index -= 1
$iInsert_Index = $vRange[$iInsertPoint_Index]
While $iReadFromIndex = $iInsert_Index
For $j = 0 To $iDim_2 - 1
If $j < $iStart Then
$aArray[$iCopyTo_Index][$j] = ""
ElseIf $j - $iStart > $iValDim_2 - 1 Then
$aArray[$iCopyTo_Index][$j] = ""
Else
If $iInsertPoint_Index - 1 < $iValDim_1 Then
If IsFunc($hDataType) Then
$aArray[$iCopyTo_Index][$j] = $hDataType($vValue[$iInsertPoint_Index - 1][$j - $iStart])
Else
$aArray[$iCopyTo_Index][$j] = $vValue[$iInsertPoint_Index - 1][$j - $iStart]
EndIf
Else
$aArray[$iCopyTo_Index][$j] = ""
EndIf
EndIf
Next
$iCopyTo_Index -= 1
$iInsertPoint_Index -= 1
If $iInsertPoint_Index = 0 Then ExitLoop 2
$iInsert_Index = $vRange[$iInsertPoint_Index]
WEnd
Next
Case Else
Return SetError(2, 0, -1)
EndSwitch
Return UBound($aArray, $UBOUND_ROWS)
EndFunc
Func _ArrayMax(Const ByRef $aArray, $iCompNumeric = 0, $iStart = -1, $iEnd = -1, $iSubItem = 0)
Local $iResult = _ArrayMaxIndex($aArray, $iCompNumeric, $iStart, $iEnd, $iSubItem)
If @error Then Return SetError(@error, 0, "")
If UBound($aArray, $UBOUND_DIMENSIONS) = 1 Then
Return $aArray[$iResult]
Else
Return $aArray[$iResult][$iSubItem]
EndIf
EndFunc
Func _ArrayMaxIndex(Const ByRef $aArray, $iCompNumeric = 0, $iStart = -1, $iEnd = -1, $iSubItem = 0)
If $iCompNumeric = Default Then $iCompNumeric = 0
If $iStart = Default Then $iStart = -1
If $iEnd = Default Then $iEnd = -1
If $iSubItem = Default Then $iSubItem = 0
Local $iRet = __Array_MinMaxIndex($aArray, $iCompNumeric, $iStart, $iEnd, $iSubItem, __Array_GreaterThan)
Return SetError(@error, 0, $iRet)
EndFunc
Func _ArrayMin(Const ByRef $aArray, $iCompNumeric = 0, $iStart = -1, $iEnd = -1, $iSubItem = 0)
Local $iResult = _ArrayMinIndex($aArray, $iCompNumeric, $iStart, $iEnd, $iSubItem)
If @error Then Return SetError(@error, 0, "")
If UBound($aArray, $UBOUND_DIMENSIONS) = 1 Then
Return $aArray[$iResult]
Else
Return $aArray[$iResult][$iSubItem]
EndIf
EndFunc
Func _ArrayMinIndex(Const ByRef $aArray, $iCompNumeric = 0, $iStart = -1, $iEnd = -1, $iSubItem = 0)
If $iCompNumeric = Default Then $iCompNumeric = 0
If $iStart = Default Then $iStart = -1
If $iEnd = Default Then $iEnd = -1
If $iSubItem = Default Then $iSubItem = 0
Local $iRet = __Array_MinMaxIndex($aArray, $iCompNumeric, $iStart, $iEnd, $iSubItem, __Array_LessThan)
Return SetError(@error, 0, $iRet)
EndFunc
Func _ArrayPermute(ByRef $aArray, $sDelimiter = "")
If $sDelimiter = Default Then $sDelimiter = ""
If Not IsArray($aArray) Then Return SetError(1, 0, 0)
If UBound($aArray, $UBOUND_DIMENSIONS) <> 1 Then Return SetError(2, 0, 0)
Local $iSize = UBound($aArray), $iFactorial = 1, $aIdx[$iSize], $aResult[1], $iCount = 1
If UBound($aArray) Then
For $i = 0 To $iSize - 1
$aIdx[$i] = $i
Next
For $i = $iSize To 1 Step -1
$iFactorial *= $i
Next
ReDim $aResult[$iFactorial + 1]
$aResult[0] = $iFactorial
__Array_ExeterInternal($aArray, 0, $iSize, $sDelimiter, $aIdx, $aResult, $iCount)
Else
$aResult[0] = 0
EndIf
Return $aResult
EndFunc
Func _ArrayPop(ByRef $aArray)
If (Not IsArray($aArray)) Then Return SetError(1, 0, "")
If UBound($aArray, $UBOUND_DIMENSIONS) <> 1 Then Return SetError(2, 0, "")
Local $iUBound = UBound($aArray) - 1
If $iUBound = -1 Then Return SetError(3, 0, "")
Local $sLastVal = $aArray[$iUBound]
If $iUBound > -1 Then
ReDim $aArray[$iUBound]
EndIf
Return $sLastVal
EndFunc
Func _ArrayPush(ByRef $aArray, $vValue, $iDirection = 0)
If $iDirection = Default Then $iDirection = 0
If (Not IsArray($aArray)) Then Return SetError(1, 0, 0)
If UBound($aArray, $UBOUND_DIMENSIONS) <> 1 Then Return SetError(3, 0, 0)
Local $iUBound = UBound($aArray) - 1
If IsArray($vValue) Then
Local $iUBoundS = UBound($vValue)
If ($iUBoundS - 1) > $iUBound Then Return SetError(2, 0, 0)
If $iDirection Then
For $i = $iUBound To $iUBoundS Step -1
$aArray[$i] = $aArray[$i - $iUBoundS]
Next
For $i = 0 To $iUBoundS - 1
$aArray[$i] = $vValue[$i]
Next
Else
For $i = 0 To $iUBound - $iUBoundS
$aArray[$i] = $aArray[$i + $iUBoundS]
Next
For $i = 0 To $iUBoundS - 1
$aArray[$i + $iUBound - $iUBoundS + 1] = $vValue[$i]
Next
EndIf
Else
If $iUBound > -1 Then
If $iDirection Then
For $i = $iUBound To 1 Step -1
$aArray[$i] = $aArray[$i - 1]
Next
$aArray[0] = $vValue
Else
For $i = 0 To $iUBound - 1
$aArray[$i] = $aArray[$i + 1]
Next
$aArray[$iUBound] = $vValue
EndIf
EndIf
EndIf
Return 1
EndFunc
Func _ArrayReverse(ByRef $aArray, $iStart = 0, $iEnd = 0)
If $iStart = Default Then $iStart = 0
If $iEnd = Default Then $iEnd = 0
If Not IsArray($aArray) Then Return SetError(1, 0, 0)
If UBound($aArray, $UBOUND_DIMENSIONS) <> 1 Then Return SetError(3, 0, 0)
If Not UBound($aArray) Then Return SetError(4, 0, 0)
Local $vTmp, $iUBound = UBound($aArray) - 1
If $iEnd < 1 Or $iEnd > $iUBound Then $iEnd = $iUBound
If $iStart < 0 Then $iStart = 0
If $iStart > $iEnd Then Return SetError(2, 0, 0)
For $i = $iStart To Int(($iStart + $iEnd - 1) / 2)
$vTmp = $aArray[$i]
$aArray[$i] = $aArray[$iEnd]
$aArray[$iEnd] = $vTmp
$iEnd -= 1
Next
Return 1
EndFunc
Func _ArraySearch(Const ByRef $aArray, $vValue, $iStart = 0, $iEnd = 0, $iCase = 0, $iCompare = 0, $iForward = 1, $iSubItem = -1, $bRow = False)
If $iStart = Default Then $iStart = 0
If $iEnd = Default Then $iEnd = 0
If $iCase = Default Then $iCase = 0
If $iCompare = Default Then $iCompare = 0
If $iForward = Default Then $iForward = 1
If $iSubItem = Default Then $iSubItem = -1
If $bRow = Default Then $bRow = False
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray) - 1
If $iDim_1 = -1 Then Return SetError(3, 0, -1)
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS) - 1
Local $bCompType = False
If $iCompare = 2 Then
$iCompare = 0
$bCompType = True
EndIf
If $bRow Then
If UBound($aArray, $UBOUND_DIMENSIONS) = 1 Then Return SetError(5, 0, -1)
If $iEnd < 1 Or $iEnd > $iDim_2 Then $iEnd = $iDim_2
If $iStart < 0 Then $iStart = 0
If $iStart > $iEnd Then Return SetError(4, 0, -1)
Else
If $iEnd < 1 Or $iEnd > $iDim_1 Then $iEnd = $iDim_1
If $iStart < 0 Then $iStart = 0
If $iStart > $iEnd Then Return SetError(4, 0, -1)
EndIf
Local $iStep = 1
If Not $iForward Then
Local $iTmp = $iStart
$iStart = $iEnd
$iEnd = $iTmp
$iStep = -1
EndIf
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
If Not $iCompare Then
If Not $iCase Then
For $i = $iStart To $iEnd Step $iStep
If $bCompType And VarGetType($aArray[$i]) <> VarGetType($vValue) Then ContinueLoop
If $aArray[$i] = $vValue Then Return $i
Next
Else
For $i = $iStart To $iEnd Step $iStep
If $bCompType And VarGetType($aArray[$i]) <> VarGetType($vValue) Then ContinueLoop
If $aArray[$i] == $vValue Then Return $i
Next
EndIf
Else
For $i = $iStart To $iEnd Step $iStep
If $iCompare = 3 Then
If StringRegExp($aArray[$i], $vValue) Then Return $i
Else
If StringInStr($aArray[$i], $vValue, $iCase) > 0 Then Return $i
EndIf
Next
EndIf
Case 2
Local $iDim_Sub
If $bRow Then
$iDim_Sub = $iDim_1
If $iSubItem > $iDim_Sub Then $iSubItem = $iDim_Sub
If $iSubItem < 0 Then
$iSubItem = 0
Else
$iDim_Sub = $iSubItem
EndIf
Else
$iDim_Sub = $iDim_2
If $iSubItem > $iDim_Sub Then $iSubItem = $iDim_Sub
If $iSubItem < 0 Then
$iSubItem = 0
Else
$iDim_Sub = $iSubItem
EndIf
EndIf
For $j = $iSubItem To $iDim_Sub
If Not $iCompare Then
If Not $iCase Then
For $i = $iStart To $iEnd Step $iStep
If $bRow Then
If $bCompType And VarGetType($aArray[$j][$i]) <> VarGetType($vValue) Then ContinueLoop
If $aArray[$j][$i] = $vValue Then Return $i
Else
If $bCompType And VarGetType($aArray[$i][$j]) <> VarGetType($vValue) Then ContinueLoop
If $aArray[$i][$j] = $vValue Then Return $i
EndIf
Next
Else
For $i = $iStart To $iEnd Step $iStep
If $bRow Then
If $bCompType And VarGetType($aArray[$j][$i]) <> VarGetType($vValue) Then ContinueLoop
If $aArray[$j][$i] == $vValue Then Return $i
Else
If $bCompType And VarGetType($aArray[$i][$j]) <> VarGetType($vValue) Then ContinueLoop
If $aArray[$i][$j] == $vValue Then Return $i
EndIf
Next
EndIf
Else
For $i = $iStart To $iEnd Step $iStep
If $iCompare = 3 Then
If $bRow Then
If StringRegExp($aArray[$j][$i], $vValue) Then Return $i
Else
If StringRegExp($aArray[$i][$j], $vValue) Then Return $i
EndIf
Else
If $bRow Then
If StringInStr($aArray[$j][$i], $vValue, $iCase) > 0 Then Return $i
Else
If StringInStr($aArray[$i][$j], $vValue, $iCase) > 0 Then Return $i
EndIf
EndIf
Next
EndIf
Next
Case Else
Return SetError(2, 0, -1)
EndSwitch
Return SetError(6, 0, -1)
EndFunc
Func _ArrayShuffle(ByRef $aArray, $iStart_Row = 0, $iEnd_Row = 0, $iCol = -1)
If $iStart_Row = Default Then $iStart_Row = 0
If $iEnd_Row = Default Then $iEnd_Row = 0
If $iCol = Default Then $iCol = -1
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS)
If $iEnd_Row = 0 Then $iEnd_Row = $iDim_1 - 1
If $iStart_Row < 0 Or $iStart_Row > $iDim_1 - 1 Then Return SetError(3, 0, -1)
If $iEnd_Row < 1 Or $iEnd_Row > $iDim_1 - 1 Then Return SetError(3, 0, -1)
If $iStart_Row > $iEnd_Row Then Return SetError(4, 0, -1)
Local $vTmp, $iRand
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
For $i = $iEnd_Row To $iStart_Row + 1 Step -1
$iRand = Random($iStart_Row, $i, 1)
$vTmp = $aArray[$i]
$aArray[$i] = $aArray[$iRand]
$aArray[$iRand] = $vTmp
Next
Return 1
Case 2
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS)
If $iCol < -1 Or $iCol > $iDim_2 - 1 Then Return SetError(5, 0, -1)
Local $iCol_Start, $iCol_End
If $iCol = -1 Then
$iCol_Start = 0
$iCol_End = $iDim_2 - 1
Else
$iCol_Start = $iCol
$iCol_End = $iCol
EndIf
For $i = $iEnd_Row To $iStart_Row + 1 Step -1
$iRand = Random($iStart_Row, $i, 1)
For $j = $iCol_Start To $iCol_End
$vTmp = $aArray[$i][$j]
$aArray[$i][$j] = $aArray[$iRand][$j]
$aArray[$iRand][$j] = $vTmp
Next
Next
Return 1
Case Else
Return SetError(2, 0, -1)
EndSwitch
EndFunc
Func _ArraySort(ByRef $aArray, $iDescending = 0, $iStart = 0, $iEnd = 0, $iSubItem = 0, $iPivot = 0)
If $iDescending = Default Then $iDescending = 0
If $iStart = Default Then $iStart = 0
If $iEnd = Default Then $iEnd = 0
If $iSubItem = Default Then $iSubItem = 0
If $iPivot = Default Then $iPivot = 0
If Not IsArray($aArray) Then Return SetError(1, 0, 0)
Local $iUBound = UBound($aArray) - 1
If $iUBound = -1 Then Return SetError(5, 0, 0)
If $iEnd = Default Then $iEnd = 0
If $iEnd < 1 Or $iEnd > $iUBound Or $iEnd = Default Then $iEnd = $iUBound
If $iStart < 0 Or $iStart = Default Then $iStart = 0
If $iStart > $iEnd Then Return SetError(2, 0, 0)
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
If $iPivot Then
__ArrayDualPivotSort($aArray, $iStart, $iEnd)
Else
__ArrayQuickSort1D($aArray, $iStart, $iEnd)
EndIf
If $iDescending Then _ArrayReverse($aArray, $iStart, $iEnd)
Case 2
If $iPivot Then Return SetError(6, 0, 0)
Local $iSubMax = UBound($aArray, $UBOUND_COLUMNS) - 1
If $iSubItem > $iSubMax Then Return SetError(3, 0, 0)
If $iDescending Then
$iDescending = -1
Else
$iDescending = 1
EndIf
__ArrayQuickSort2D($aArray, $iDescending, $iStart, $iEnd, $iSubItem, $iSubMax)
Case Else
Return SetError(4, 0, 0)
EndSwitch
Return 1
EndFunc
Func __ArrayQuickSort1D(ByRef $aArray, Const ByRef $iStart, Const ByRef $iEnd)
If $iEnd <= $iStart Then Return
Local $vTmp
If ($iEnd - $iStart) < 15 Then
Local $vCur
For $i = $iStart + 1 To $iEnd
$vTmp = $aArray[$i]
If IsNumber($vTmp) Then
For $j = $i - 1 To $iStart Step -1
$vCur = $aArray[$j]
If ($vTmp >= $vCur And IsNumber($vCur)) Or (Not IsNumber($vCur) And StringCompare($vTmp, $vCur) >= 0) Then ExitLoop
$aArray[$j + 1] = $vCur
Next
Else
For $j = $i - 1 To $iStart Step -1
If (StringCompare($vTmp, $aArray[$j]) >= 0) Then ExitLoop
$aArray[$j + 1] = $aArray[$j]
Next
EndIf
$aArray[$j + 1] = $vTmp
Next
Return
EndIf
Local $L = $iStart, $R = $iEnd, $vPivot = $aArray[Int(($iStart + $iEnd) / 2)], $bNum = IsNumber($vPivot)
Do
If $bNum Then
While ($aArray[$L] < $vPivot And IsNumber($aArray[$L])) Or (Not IsNumber($aArray[$L]) And StringCompare($aArray[$L], $vPivot) < 0)
$L += 1
WEnd
While ($aArray[$R] > $vPivot And IsNumber($aArray[$R])) Or (Not IsNumber($aArray[$R]) And StringCompare($aArray[$R], $vPivot) > 0)
$R -= 1
WEnd
Else
While (StringCompare($aArray[$L], $vPivot) < 0)
$L += 1
WEnd
While (StringCompare($aArray[$R], $vPivot) > 0)
$R -= 1
WEnd
EndIf
If $L <= $R Then
$vTmp = $aArray[$L]
$aArray[$L] = $aArray[$R]
$aArray[$R] = $vTmp
$L += 1
$R -= 1
EndIf
Until $L > $R
__ArrayQuickSort1D($aArray, $iStart, $R)
__ArrayQuickSort1D($aArray, $L, $iEnd)
EndFunc
Func __ArrayQuickSort2D(ByRef $aArray, Const ByRef $iStep, Const ByRef $iStart, Const ByRef $iEnd, Const ByRef $iSubItem, Const ByRef $iSubMax)
If $iEnd <= $iStart Then Return
Local $vTmp, $L = $iStart, $R = $iEnd, $vPivot = $aArray[Int(($iStart + $iEnd) / 2)][$iSubItem], $bNum = IsNumber($vPivot)
Do
If $bNum Then
While ($iStep * ($aArray[$L][$iSubItem] - $vPivot) < 0 And IsNumber($aArray[$L][$iSubItem])) Or (Not IsNumber($aArray[$L][$iSubItem]) And $iStep * StringCompare($aArray[$L][$iSubItem], $vPivot) < 0)
$L += 1
WEnd
While ($iStep * ($aArray[$R][$iSubItem] - $vPivot) > 0 And IsNumber($aArray[$R][$iSubItem])) Or (Not IsNumber($aArray[$R][$iSubItem]) And $iStep * StringCompare($aArray[$R][$iSubItem], $vPivot) > 0)
$R -= 1
WEnd
Else
While ($iStep * StringCompare($aArray[$L][$iSubItem], $vPivot) < 0)
$L += 1
WEnd
While ($iStep * StringCompare($aArray[$R][$iSubItem], $vPivot) > 0)
$R -= 1
WEnd
EndIf
If $L <= $R Then
For $i = 0 To $iSubMax
$vTmp = $aArray[$L][$i]
$aArray[$L][$i] = $aArray[$R][$i]
$aArray[$R][$i] = $vTmp
Next
$L += 1
$R -= 1
EndIf
Until $L > $R
__ArrayQuickSort2D($aArray, $iStep, $iStart, $R, $iSubItem, $iSubMax)
__ArrayQuickSort2D($aArray, $iStep, $L, $iEnd, $iSubItem, $iSubMax)
EndFunc
Func __ArrayDualPivotSort(ByRef $aArray, $iPivot_Left, $iPivot_Right, $bLeftMost = True)
If $iPivot_Left > $iPivot_Right Then Return
Local $iLength = $iPivot_Right - $iPivot_Left + 1
Local $i, $j, $k, $iAi, $iAk, $iA1, $iA2, $iLast
If $iLength < 45 Then
If $bLeftMost Then
$i = $iPivot_Left
While $i < $iPivot_Right
$j = $i
$iAi = $aArray[$i + 1]
While $iAi < $aArray[$j]
$aArray[$j + 1] = $aArray[$j]
$j -= 1
If $j + 1 = $iPivot_Left Then ExitLoop
WEnd
$aArray[$j + 1] = $iAi
$i += 1
WEnd
Else
While 1
If $iPivot_Left >= $iPivot_Right Then Return 1
$iPivot_Left += 1
If $aArray[$iPivot_Left] < $aArray[$iPivot_Left - 1] Then ExitLoop
WEnd
While 1
$k = $iPivot_Left
$iPivot_Left += 1
If $iPivot_Left > $iPivot_Right Then ExitLoop
$iA1 = $aArray[$k]
$iA2 = $aArray[$iPivot_Left]
If $iA1 < $iA2 Then
$iA2 = $iA1
$iA1 = $aArray[$iPivot_Left]
EndIf
$k -= 1
While $iA1 < $aArray[$k]
$aArray[$k + 2] = $aArray[$k]
$k -= 1
WEnd
$aArray[$k + 2] = $iA1
While $iA2 < $aArray[$k]
$aArray[$k + 1] = $aArray[$k]
$k -= 1
WEnd
$aArray[$k + 1] = $iA2
$iPivot_Left += 1
WEnd
$iLast = $aArray[$iPivot_Right]
$iPivot_Right -= 1
While $iLast < $aArray[$iPivot_Right]
$aArray[$iPivot_Right + 1] = $aArray[$iPivot_Right]
$iPivot_Right -= 1
WEnd
$aArray[$iPivot_Right + 1] = $iLast
EndIf
Return 1
EndIf
Local $iSeventh = BitShift($iLength, 3) + BitShift($iLength, 6) + 1
Local $iE1, $iE2, $iE3, $iE4, $iE5, $t
$iE3 = Ceiling(($iPivot_Left + $iPivot_Right) / 2)
$iE2 = $iE3 - $iSeventh
$iE1 = $iE2 - $iSeventh
$iE4 = $iE3 + $iSeventh
$iE5 = $iE4 + $iSeventh
If $aArray[$iE2] < $aArray[$iE1] Then
$t = $aArray[$iE2]
$aArray[$iE2] = $aArray[$iE1]
$aArray[$iE1] = $t
EndIf
If $aArray[$iE3] < $aArray[$iE2] Then
$t = $aArray[$iE3]
$aArray[$iE3] = $aArray[$iE2]
$aArray[$iE2] = $t
If $t < $aArray[$iE1] Then
$aArray[$iE2] = $aArray[$iE1]
$aArray[$iE1] = $t
EndIf
EndIf
If $aArray[$iE4] < $aArray[$iE3] Then
$t = $aArray[$iE4]
$aArray[$iE4] = $aArray[$iE3]
$aArray[$iE3] = $t
If $t < $aArray[$iE2] Then
$aArray[$iE3] = $aArray[$iE2]
$aArray[$iE2] = $t
If $t < $aArray[$iE1] Then
$aArray[$iE2] = $aArray[$iE1]
$aArray[$iE1] = $t
EndIf
EndIf
EndIf
If $aArray[$iE5] < $aArray[$iE4] Then
$t = $aArray[$iE5]
$aArray[$iE5] = $aArray[$iE4]
$aArray[$iE4] = $t
If $t < $aArray[$iE3] Then
$aArray[$iE4] = $aArray[$iE3]
$aArray[$iE3] = $t
If $t < $aArray[$iE2] Then
$aArray[$iE3] = $aArray[$iE2]
$aArray[$iE2] = $t
If $t < $aArray[$iE1] Then
$aArray[$iE2] = $aArray[$iE1]
$aArray[$iE1] = $t
EndIf
EndIf
EndIf
EndIf
Local $iLess = $iPivot_Left
Local $iGreater = $iPivot_Right
If (($aArray[$iE1] <> $aArray[$iE2]) And ($aArray[$iE2] <> $aArray[$iE3]) And ($aArray[$iE3] <> $aArray[$iE4]) And ($aArray[$iE4] <> $aArray[$iE5])) Then
Local $iPivot_1 = $aArray[$iE2]
Local $iPivot_2 = $aArray[$iE4]
$aArray[$iE2] = $aArray[$iPivot_Left]
$aArray[$iE4] = $aArray[$iPivot_Right]
Do
$iLess += 1
Until $aArray[$iLess] >= $iPivot_1
Do
$iGreater -= 1
Until $aArray[$iGreater] <= $iPivot_2
$k = $iLess
While $k <= $iGreater
$iAk = $aArray[$k]
If $iAk < $iPivot_1 Then
$aArray[$k] = $aArray[$iLess]
$aArray[$iLess] = $iAk
$iLess += 1
ElseIf $iAk > $iPivot_2 Then
While $aArray[$iGreater] > $iPivot_2
$iGreater -= 1
If $iGreater + 1 = $k Then ExitLoop 2
WEnd
If $aArray[$iGreater] < $iPivot_1 Then
$aArray[$k] = $aArray[$iLess]
$aArray[$iLess] = $aArray[$iGreater]
$iLess += 1
Else
$aArray[$k] = $aArray[$iGreater]
EndIf
$aArray[$iGreater] = $iAk
$iGreater -= 1
EndIf
$k += 1
WEnd
$aArray[$iPivot_Left] = $aArray[$iLess - 1]
$aArray[$iLess - 1] = $iPivot_1
$aArray[$iPivot_Right] = $aArray[$iGreater + 1]
$aArray[$iGreater + 1] = $iPivot_2
__ArrayDualPivotSort($aArray, $iPivot_Left, $iLess - 2, True)
__ArrayDualPivotSort($aArray, $iGreater + 2, $iPivot_Right, False)
If ($iLess < $iE1) And ($iE5 < $iGreater) Then
While $aArray[$iLess] = $iPivot_1
$iLess += 1
WEnd
While $aArray[$iGreater] = $iPivot_2
$iGreater -= 1
WEnd
$k = $iLess
While $k <= $iGreater
$iAk = $aArray[$k]
If $iAk = $iPivot_1 Then
$aArray[$k] = $aArray[$iLess]
$aArray[$iLess] = $iAk
$iLess += 1
ElseIf $iAk = $iPivot_2 Then
While $aArray[$iGreater] = $iPivot_2
$iGreater -= 1
If $iGreater + 1 = $k Then ExitLoop 2
WEnd
If $aArray[$iGreater] = $iPivot_1 Then
$aArray[$k] = $aArray[$iLess]
$aArray[$iLess] = $iPivot_1
$iLess += 1
Else
$aArray[$k] = $aArray[$iGreater]
EndIf
$aArray[$iGreater] = $iAk
$iGreater -= 1
EndIf
$k += 1
WEnd
EndIf
__ArrayDualPivotSort($aArray, $iLess, $iGreater, False)
Else
Local $iPivot = $aArray[$iE3]
$k = $iLess
While $k <= $iGreater
If $aArray[$k] = $iPivot Then
$k += 1
ContinueLoop
EndIf
$iAk = $aArray[$k]
If $iAk < $iPivot Then
$aArray[$k] = $aArray[$iLess]
$aArray[$iLess] = $iAk
$iLess += 1
Else
While $aArray[$iGreater] > $iPivot
$iGreater -= 1
WEnd
If $aArray[$iGreater] < $iPivot Then
$aArray[$k] = $aArray[$iLess]
$aArray[$iLess] = $aArray[$iGreater]
$iLess += 1
Else
$aArray[$k] = $iPivot
EndIf
$aArray[$iGreater] = $iAk
$iGreater -= 1
EndIf
$k += 1
WEnd
__ArrayDualPivotSort($aArray, $iPivot_Left, $iLess - 1, True)
__ArrayDualPivotSort($aArray, $iGreater + 1, $iPivot_Right, False)
EndIf
EndFunc
Func _ArraySwap(ByRef $aArray, $iIndex_1, $iIndex_2, $bCol = False, $iStart = -1, $iEnd = -1)
If $bCol = Default Then $bCol = False
If $iStart = Default Then $iStart = -1
If $iEnd = Default Then $iEnd = -1
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS) - 1
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS) - 1
If $iDim_2 = -1 Then
$bCol = False
$iStart = -1
$iEnd = -1
EndIf
If $iStart > $iEnd Then Return SetError(5, 0, -1)
If $bCol Then
If $iIndex_1 < 0 Or $iIndex_2 > $iDim_2 Then Return SetError(3, 0, -1)
If $iStart = -1 Then $iStart = 0
If $iEnd = -1 Then $iEnd = $iDim_1
Else
If $iIndex_1 < 0 Or $iIndex_2 > $iDim_1 Then Return SetError(3, 0, -1)
If $iStart = -1 Then $iStart = 0
If $iEnd = -1 Then $iEnd = $iDim_2
EndIf
Local $vTmp
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
$vTmp = $aArray[$iIndex_1]
$aArray[$iIndex_1] = $aArray[$iIndex_2]
$aArray[$iIndex_2] = $vTmp
Case 2
If $iStart < -1 Or $iEnd < -1 Then Return SetError(4, 0, -1)
If $bCol Then
If $iStart > $iDim_1 Or $iEnd > $iDim_1 Then Return SetError(4, 0, -1)
For $j = $iStart To $iEnd
$vTmp = $aArray[$j][$iIndex_1]
$aArray[$j][$iIndex_1] = $aArray[$j][$iIndex_2]
$aArray[$j][$iIndex_2] = $vTmp
Next
Else
If $iStart > $iDim_2 Or $iEnd > $iDim_2 Then Return SetError(4, 0, -1)
For $j = $iStart To $iEnd
$vTmp = $aArray[$iIndex_1][$j]
$aArray[$iIndex_1][$j] = $aArray[$iIndex_2][$j]
$aArray[$iIndex_2][$j] = $vTmp
Next
EndIf
Case Else
Return SetError(2, 0, -1)
EndSwitch
Return 1
EndFunc
Func _ArrayToClip(Const ByRef $aArray, $sDelim_Col = "|", $iStart_Row = -1, $iEnd_Row = -1, $sDelim_Row = @CRLF, $iStart_Col = -1, $iEnd_Col = -1)
Local $sResult = _ArrayToString($aArray, $sDelim_Col, $iStart_Row, $iEnd_Row, $sDelim_Row, $iStart_Col, $iEnd_Col)
If @error Then Return SetError(@error, 0, 0)
If ClipPut($sResult) Then Return 1
Return SetError(-1, 0, 0)
EndFunc
Func _ArrayToString(Const ByRef $aArray, $sDelim_Col = "|", $iStart_Row = Default, $iEnd_Row = Default, $sDelim_Row = @CRLF, $iStart_Col = Default, $iEnd_Col = Default)
If $sDelim_Col = Default Then $sDelim_Col = "|"
If $sDelim_Row = Default Then $sDelim_Row = @CRLF
If $iStart_Row = Default Then $iStart_Row = -1
If $iEnd_Row = Default Then $iEnd_Row = -1
If $iStart_Col = Default Then $iStart_Col = -1
If $iEnd_Col = Default Then $iEnd_Col = -1
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS) - 1
If $iDim_1 = -1 Then Return ""
If $iStart_Row = -1 Then $iStart_Row = 0
If $iEnd_Row = -1 Then $iEnd_Row = $iDim_1
If $iStart_Row < -1 Or $iEnd_Row < -1 Then Return SetError(3, 0, -1)
If $iStart_Row > $iDim_1 Or $iEnd_Row > $iDim_1 Then Return SetError(3, 0, "")
If $iStart_Row > $iEnd_Row Then Return SetError(4, 0, -1)
Local $sRet = ""
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
For $i = $iStart_Row To $iEnd_Row
$sRet &= $aArray[$i] & $sDelim_Col
Next
Return StringTrimRight($sRet, StringLen($sDelim_Col))
Case 2
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS) - 1
If $iDim_2 = -1 Then Return ""
If $iStart_Col = -1 Then $iStart_Col = 0
If $iEnd_Col = -1 Then $iEnd_Col = $iDim_2
If $iStart_Col < -1 Or $iEnd_Col < -1 Then Return SetError(5, 0, -1)
If $iStart_Col > $iDim_2 Or $iEnd_Col > $iDim_2 Then Return SetError(5, 0, -1)
If $iStart_Col > $iEnd_Col Then Return SetError(6, 0, -1)
Local $iDelimColLen = StringLen($sDelim_Col)
For $i = $iStart_Row To $iEnd_Row
For $j = $iStart_Col To $iEnd_Col
$sRet &= $aArray[$i][$j] & $sDelim_Col
Next
$sRet = StringTrimRight($sRet, $iDelimColLen) & $sDelim_Row
Next
Return StringTrimRight($sRet, StringLen($sDelim_Row))
Case Else
Return SetError(2, 0, -1)
EndSwitch
Return 1
EndFunc
Func _ArrayTranspose(ByRef $aArray, $bForce1D = False)
Local $aTemp
Switch $bForce1D
Case Default
$bForce1D = False
Case True, False
Case Else
Return SetError(3, 0, 0)
EndSwitch
Switch UBound($aArray, 0)
Case 0
Return SetError(2, 0, 0)
Case 1
Local $aTemp[1][UBound($aArray)]
For $i = 0 To UBound($aArray) - 1
$aTemp[0][$i] = $aArray[$i]
Next
$aArray = $aTemp
Case 2
Local $iDim_1 = UBound($aArray, 1), $iDim_2 = UBound($aArray, 2)
If $iDim_1 <> $iDim_2 Then
Local $aTemp[$iDim_2][$iDim_1]
For $i = 0 To $iDim_1 - 1
For $j = 0 To $iDim_2 - 1
$aTemp[$j][$i] = $aArray[$i][$j]
Next
Next
$aArray = $aTemp
Else
Local $vElement
For $i = 0 To $iDim_1 - 1
For $j = $i + 1 To $iDim_2 - 1
$vElement = $aArray[$i][$j]
$aArray[$i][$j] = $aArray[$j][$i]
$aArray[$j][$i] = $vElement
Next
Next
EndIf
If $bForce1D = True And UBound($aArray, 2) = 1 Then
$aTemp = $aArray
ReDim $aArray[UBound($aTemp)]
For $i = 0 To UBound($aTemp) - 1
$aArray[$i] = $aTemp[$i][0]
Next
EndIf
Case Else
Return SetError(1, 0, 0)
EndSwitch
Return 1
EndFunc
Func _ArrayTrim(ByRef $aArray, $iTrimNum, $iDirection = 0, $iStart = 0, $iEnd = 0, $iSubItem = 0)
If $iDirection = Default Then $iDirection = 0
If $iStart = Default Then $iStart = 0
If $iEnd = Default Then $iEnd = 0
If $iSubItem = Default Then $iSubItem = 0
If Not IsArray($aArray) Then Return SetError(1, 0, 0)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS) - 1
If $iEnd = 0 Then $iEnd = $iDim_1
If $iStart > $iEnd Then Return SetError(3, 0, -1)
If $iStart < 0 Or $iEnd < 0 Then Return SetError(3, 0, -1)
If $iStart > $iDim_1 Or $iEnd > $iDim_1 Then Return SetError(3, 0, -1)
If $iStart > $iEnd Then Return SetError(4, 0, -1)
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
If $iDirection Then
For $i = $iStart To $iEnd
$aArray[$i] = StringTrimRight($aArray[$i], $iTrimNum)
Next
Else
For $i = $iStart To $iEnd
$aArray[$i] = StringTrimLeft($aArray[$i], $iTrimNum)
Next
EndIf
Case 2
Local $iDim_2 = UBound($aArray, $UBOUND_COLUMNS) - 1
If $iSubItem < 0 Or $iSubItem > $iDim_2 Then Return SetError(5, 0, -1)
If $iDirection Then
For $i = $iStart To $iEnd
$aArray[$i][$iSubItem] = StringTrimRight($aArray[$i][$iSubItem], $iTrimNum)
Next
Else
For $i = $iStart To $iEnd
$aArray[$i][$iSubItem] = StringTrimLeft($aArray[$i][$iSubItem], $iTrimNum)
Next
EndIf
Case Else
Return SetError(2, 0, 0)
EndSwitch
Return 1
EndFunc
Func _ArrayUnique(Const ByRef $aArray, $iColumn = 0, $iBase = 0, $iCase = 0, $iCount = $ARRAYUNIQUE_COUNT, $iIntType = $ARRAYUNIQUE_AUTO)
If $iColumn = Default Then $iColumn = 0
If $iBase = Default Then $iBase = 0
If $iCase = Default Then $iCase = 0
If $iCount = Default Then $iCount = $ARRAYUNIQUE_COUNT
If $iIntType = Default Then $iIntType = $ARRAYUNIQUE_AUTO
If UBound($aArray, $UBOUND_ROWS) = 0 Then Return SetError(1, 0, 0)
Local $iDims = UBound($aArray, $UBOUND_DIMENSIONS), $iNumColumns = UBound($aArray, $UBOUND_COLUMNS)
If $iDims > 2 Then Return SetError(2, 0, 0)
If $iBase < 0 Or $iBase > 1 Or (Not IsInt($iBase)) Then Return SetError(3, 0, 0)
If $iCase < 0 Or $iCase > 1 Or (Not IsInt($iCase)) Then Return SetError(3, 0, 0)
If $iCount < 0 Or $iCount > 1 Or (Not IsInt($iCount)) Then Return SetError(4, 0, 0)
If $iIntType < 0 Or $iIntType > 4 Or (Not IsInt($iIntType)) Then Return SetError(5, 0, 0)
If $iColumn < 0 Or ($iNumColumns = 0 And $iColumn > 0) Or ($iNumColumns > 0 And $iColumn >= $iNumColumns) Then Return SetError(6, 0, 0)
If $iIntType = $ARRAYUNIQUE_AUTO Then
Local $bInt, $sVarType
If $iDims = 1 Then
$bInt = IsInt($aArray[$iBase])
$sVarType = VarGetType($aArray[$iBase])
Else
$bInt = IsInt($aArray[$iBase][$iColumn])
$sVarType = VarGetType($aArray[$iBase][$iColumn])
EndIf
If $bInt And $sVarType = "Int64" Then
$iIntType = $ARRAYUNIQUE_FORCE64
Else
$iIntType = $ARRAYUNIQUE_FORCE32
EndIf
EndIf
ObjEvent("AutoIt.Error", __ArrayUnique_AutoErrFunc)
Local $oDictionary = ObjCreate("Scripting.Dictionary")
$oDictionary.CompareMode = Number(Not $iCase)
Local $vElem, $sType, $vKey, $bCOMError = False
For $i = $iBase To UBound($aArray) - 1
If $iDims = 1 Then
$vElem = $aArray[$i]
Else
$vElem = $aArray[$i][$iColumn]
EndIf
Switch $iIntType
Case $ARRAYUNIQUE_FORCE32
$oDictionary.Item($vElem)
If @error Then
$bCOMError = True
ExitLoop
EndIf
Case $ARRAYUNIQUE_FORCE64
$sType = VarGetType($vElem)
If $sType = "Int32" Then
$bCOMError = True
ExitLoop
EndIf
$vKey = "#" & $sType & "#" & String($vElem)
If Not $oDictionary.Item($vKey) Then
$oDictionary($vKey) = $vElem
EndIf
Case $ARRAYUNIQUE_MATCH
$sType = VarGetType($vElem)
If StringLeft($sType, 3) = "Int" Then
$vKey = "#Int#" & String($vElem)
Else
$vKey = "#" & $sType & "#" & String($vElem)
EndIf
If Not $oDictionary.Item($vKey) Then
$oDictionary($vKey) = $vElem
EndIf
Case $ARRAYUNIQUE_DISTINCT
$vKey = "#" & VarGetType($vElem) & "#" & String($vElem)
If Not $oDictionary.Item($vKey) Then
$oDictionary($vKey) = $vElem
EndIf
EndSwitch
Next
Local $aValues, $j = 0
If $bCOMError Then
Return SetError(7, 0, 0)
ElseIf $iIntType <> $ARRAYUNIQUE_FORCE32 Then
Local $aValues[$oDictionary.Count]
For $vKey In $oDictionary.Keys()
$aValues[$j] = $oDictionary($vKey)
If StringLeft($vKey, 5) = "#Ptr#" Then
$aValues[$j] = Ptr($aValues[$j])
EndIf
$j += 1
Next
Else
$aValues = $oDictionary.Keys()
EndIf
If $iCount Then
_ArrayInsert($aValues, 0, $oDictionary.Count)
EndIf
Return $aValues
EndFunc
Func _Array1DToHistogram($aArray, $iSizing = 100)
If UBound($aArray, 0) > 1 Then Return SetError(1, 0, "")
$iSizing = $iSizing * 8
Local $t, $n, $iMin = 0, $iMax = 0, $iOffset = 0
For $i = 0 To UBound($aArray) - 1
$t = $aArray[$i]
$t = IsNumber($t) ? Round($t) : 0
If $t < $iMin Then $iMin = $t
If $t > $iMax Then $iMax = $t
Next
Local $iRange = Int(Round(($iMax - $iMin) / 8)) * 8
Local $iSpaceRatio = 4
For $i = 0 To UBound($aArray) - 1
$t = $aArray[$i]
If $t Then
$n = Abs(Round(($iSizing * $t) / $iRange) / 8)
$aArray[$i] = ""
If $t > 0 Then
If $iMin Then
$iOffset = Int(Abs(Round(($iSizing * $iMin) / $iRange) / 8) / 8 * $iSpaceRatio)
$aArray[$i] = __Array_StringRepeat(ChrW(0x20), $iOffset)
EndIf
Else
If $iMin <> $t Then
$iOffset = Int(Abs(Round(($iSizing * ($t - $iMin)) / $iRange) / 8) / 8 * $iSpaceRatio)
$aArray[$i] = __Array_StringRepeat(ChrW(0x20), $iOffset)
EndIf
EndIf
$aArray[$i] &= __Array_StringRepeat(ChrW(0x2588), Int($n / 8))
$n = Mod($n, 8)
If $n > 0 Then $aArray[$i] &= ChrW(0x2588 + 8 - $n)
$aArray[$i] &= ' ' & $t
Else
$aArray[$i] = ""
EndIf
Next
Return $aArray
EndFunc
Func _Array2DCreate($aArray1, $aArray2)
If Not IsArray($aArray1) Or Not IsArray($aArray2) Then Return SetError(3, 0, "")
Local $iDim1 = UBound($aArray1, $UBOUND_DIMENSIONS), $iDim2 = UBound($aArray2, $UBOUND_DIMENSIONS)
If $iDim1 > 2 Or $iDim2 > 2 Then Return SetError(1, 0, "")
Local $nRows = UBound($aArray1, $UBOUND_ROWS)
If $nRows <> UBound($aArray2, $UBOUND_ROWS) Then Return SetError(2, 0, "")
Local $nCols1 = ($iDim1 = 1 ? 1 : UBound($aArray1, $UBOUND_COLUMNS))
Local $nCols2 = ($iDim2 = 1 ? 1 : UBound($aArray2, $UBOUND_COLUMNS))
Local $aTmp[$nRows][$nCols1 + $nCols2]
Select
Case $iDim1 = 1 And $iDim2 = 1
For $i = 0 To $nRows - 1
$aTmp[$i][0] = $aArray1[$i]
$aTmp[$i][1] = $aArray2[$i]
Next
Case $iDim1 = 1 And $iDim2 = 2
For $i = 0 To $nRows - 1
$aTmp[$i][0] = $aArray1[$i]
Next
For $j = 1 To $nCols2
For $i = 0 To $nRows - 1
$aTmp[$i][$j] = $aArray2[$i][$j - 1]
Next
Next
Case $iDim1 = 2 And $iDim2 = 1
For $j = 0 To $nCols1 - 1
For $i = 0 To $nRows - 1
$aTmp[$i][$j] = $aArray1[$i][$j]
Next
Next
For $i = 0 To $nRows - 1
$aTmp[$i][$nCols1] = $aArray2[$i]
Next
Case $iDim1 = 2 And $iDim2 = 2
For $j = 0 To $nCols1 - 1
For $i = 0 To $nRows - 1
$aTmp[$i][$j] = $aArray1[$i][$j]
Next
Next
For $j = $nCols1 To ($nCols1 + $nCols2) - 1
For $i = 0 To $nRows - 1
$aTmp[$i][$j] = $aArray2[$i][$j - $nCols1]
Next
Next
EndSelect
Return $aTmp
EndFunc
Func __Array_StringRepeat($sString, $iRepeatCount)
$iRepeatCount = Int($iRepeatCount)
If StringLen($sString) < 1 Or $iRepeatCount <= 0 Then Return SetError(1, 0, "")
Local $sResult = ""
While $iRepeatCount > 1
If BitAND($iRepeatCount, 1) Then $sResult &= $sString
$sString &= $sString
$iRepeatCount = BitShift($iRepeatCount, 1)
WEnd
Return $sString & $sResult
EndFunc
Func __Array_ExeterInternal(ByRef $aArray, $iStart, $iSize, $sDelimiter, ByRef $aIdx, ByRef $aResult, ByRef $iCount)
If $iStart == $iSize - 1 Then
For $i = 0 To $iSize - 1
$aResult[$iCount] &= $aArray[$aIdx[$i]] & $sDelimiter
Next
If $sDelimiter <> "" Then $aResult[$iCount] = StringTrimRight($aResult[$iCount], StringLen($sDelimiter))
$iCount += 1
Else
Local $iTemp
For $i = $iStart To $iSize - 1
$iTemp = $aIdx[$i]
$aIdx[$i] = $aIdx[$iStart]
$aIdx[$iStart] = $iTemp
__Array_ExeterInternal($aArray, $iStart + 1, $iSize, $sDelimiter, $aIdx, $aResult, $iCount)
$aIdx[$iStart] = $aIdx[$i]
$aIdx[$i] = $iTemp
Next
EndIf
EndFunc
Func __Array_Combinations($iN, $iR)
Local $i_Total = 1
For $i = $iR To 1 Step -1
$i_Total *= ($iN / $i)
$iN -= 1
Next
Return Round($i_Total)
EndFunc
Func __Array_GetNext($iN, $iR, ByRef $iLeft, $iTotal, ByRef $aIdx)
If $iLeft == $iTotal Then
$iLeft -= 1
Return
EndIf
Local $i = $iR - 1
While $aIdx[$i] == $iN - $iR + $i
$i -= 1
WEnd
$aIdx[$i] += 1
For $j = $i + 1 To $iR - 1
$aIdx[$j] = $aIdx[$i] + $j - $i
Next
$iLeft -= 1
EndFunc
Func __Array_MinMaxIndex(Const ByRef $aArray, $iCompNumeric, $iStart, $iEnd, $iSubItem, $fuComparison)
If $iCompNumeric = Default Then $iCompNumeric = 0
If $iCompNumeric <> 1 Then $iCompNumeric = 0
If $iStart = Default Then $iStart = 0
If $iEnd = Default Then $iEnd = 0
If $iSubItem = Default Then $iSubItem = 0
If Not IsArray($aArray) Then Return SetError(1, 0, -1)
Local $iDim_1 = UBound($aArray, $UBOUND_ROWS) - 1
If $iDim_1 < 0 Then Return SetError(1, 0, -1)
If $iEnd = -1 Then $iEnd = $iDim_1
If $iStart = -1 Then $iStart = 0
If $iStart < -1 Or $iEnd < -1 Then Return SetError(3, 0, -1)
If $iStart > $iDim_1 Or $iEnd > $iDim_1 Then Return SetError(3, 0, -1)
If $iStart > $iEnd Then Return SetError(4, 0, -1)
If $iDim_1 < 0 Then Return SetError(5, 0, -1)
Local $iMaxMinIndex = $iStart
Switch UBound($aArray, $UBOUND_DIMENSIONS)
Case 1
If $iCompNumeric Then
For $i = $iStart To $iEnd
If $fuComparison(Number($aArray[$i]), Number($aArray[$iMaxMinIndex])) Then $iMaxMinIndex = $i
Next
Else
For $i = $iStart To $iEnd
If $fuComparison($aArray[$i], $aArray[$iMaxMinIndex]) Then $iMaxMinIndex = $i
Next
EndIf
Case 2
If $iSubItem < 0 Or $iSubItem > UBound($aArray, $UBOUND_COLUMNS) - 1 Then Return SetError(6, 0, -1)
If $iCompNumeric Then
For $i = $iStart To $iEnd
If $fuComparison(Number($aArray[$i][$iSubItem]), Number($aArray[$iMaxMinIndex][$iSubItem])) Then $iMaxMinIndex = $i
Next
Else
For $i = $iStart To $iEnd
If $fuComparison($aArray[$i][$iSubItem], $aArray[$iMaxMinIndex][$iSubItem]) Then $iMaxMinIndex = $i
Next
EndIf
Case Else
Return SetError(2, 0, -1)
EndSwitch
Return $iMaxMinIndex
EndFunc
Func __Array_GreaterThan($vValue1, $vValue2)
Return $vValue1 > $vValue2
EndFunc
Func __Array_LessThan($vValue1, $vValue2)
Return $vValue1 < $vValue2
EndFunc
Func __ArrayUnique_AutoErrFunc()
EndFunc
Func _FileCountLines($sFilePath)
FileReadToArray($sFilePath)
If @error Then Return SetError(@error, @extended, 0)
Return @extended
EndFunc
Func _FileCreate($sFilePath)
Local $hFileOpen = FileOpen($sFilePath, BitOR($FO_OVERWRITE, $FO_CREATEPATH))
If $hFileOpen = -1 Then Return SetError(1, 0, 0)
Local $iFileWrite = FileWrite($hFileOpen, "")
FileClose($hFileOpen)
If Not $iFileWrite Then Return SetError(2, 0, 0)
Return 1
EndFunc
Func _FileListToArray($sFilePath, $sFilter = "*", $iFlag = $FLTA_FILESFOLDERS, $bReturnPath = False)
Local $sDelimiter = "|", $sFileList = "", $sFileName = "", $sFullPath = ""
$sFilePath = StringRegExpReplace($sFilePath, "[\\/]+$", "") & "\"
If $iFlag = Default Then $iFlag = $FLTA_FILESFOLDERS
If $bReturnPath Then $sFullPath = $sFilePath
If $sFilter = Default Then $sFilter = "*"
If Not FileExists($sFilePath) Then Return SetError(1, 0, 0)
If StringRegExp($sFilter, "[\\/:><\|]|(?s)^\s*$") Then Return SetError(2, 0, 0)
If Not ($iFlag = 0 Or $iFlag = 1 Or $iFlag = 2) Then Return SetError(3, 0, 0)
Local $hSearch = FileFindFirstFile($sFilePath & $sFilter)
If @error Then Return SetError(4, 0, 0)
While 1
$sFileName = FileFindNextFile($hSearch)
If @error Then ExitLoop
If ($iFlag + @extended = 2) Then ContinueLoop
$sFileList &= $sDelimiter & $sFullPath & $sFileName
WEnd
FileClose($hSearch)
If $sFileList = "" Then Return SetError(4, 0, 0)
Return StringSplit(StringTrimLeft($sFileList, 1), $sDelimiter)
EndFunc
Func _FileListToArrayRec($sFilePath, $sMask = "*", $iReturn = $FLTAR_FILESFOLDERS, $iRecur = $FLTAR_NORECUR, $iSort = $FLTAR_NOSORT, $iReturnPath = $FLTAR_RELPATH)
If Not FileExists($sFilePath) Then Return SetError(1, 1, "")
If $sMask = Default Then $sMask = "*"
If $iReturn = Default Then $iReturn = $FLTAR_FILESFOLDERS
If $iRecur = Default Then $iRecur = $FLTAR_NORECUR
If $iSort = Default Then $iSort = $FLTAR_NOSORT
If $iReturnPath = Default Then $iReturnPath = $FLTAR_RELPATH
If $iRecur > 1 Or Not IsInt($iRecur) Then Return SetError(1, 6, "")
Local $bLongPath = False
If StringLeft($sFilePath, 4) == "\\?\" Then
$bLongPath = True
EndIf
Local $sFolderSlash = ""
If StringRight($sFilePath, 1) = "\" Then
$sFolderSlash = "\"
Else
$sFilePath = $sFilePath & "\"
EndIf
Local $asFolderSearchList[100] = [1]
$asFolderSearchList[1] = $sFilePath
Local $iHide_HS = 0,  $sHide_HS = ""
If BitAND($iReturn, $FLTAR_NOHIDDEN) Then
$iHide_HS += 2
$sHide_HS &= "H"
$iReturn -= $FLTAR_NOHIDDEN
EndIf
If BitAND($iReturn, $FLTAR_NOSYSTEM) Then
$iHide_HS += 4
$sHide_HS &= "S"
$iReturn -= $FLTAR_NOSYSTEM
EndIf
Local $iHide_Link = 0
If BitAND($iReturn, $FLTAR_NOLINK) Then
$iHide_Link = 0x400
$iReturn -= $FLTAR_NOLINK
EndIf
Local $iMaxLevel = 0
If $iRecur < 0 Then
StringReplace($sFilePath, "\", "", 0, $STR_NOCASESENSEBASIC)
$iMaxLevel = @extended - $iRecur
EndIf
Local $sExclude_List = "", $sExclude_List_Folder = "", $sInclude_List = "*"
Local $aMaskSplit = StringSplit($sMask, "|")
Switch $aMaskSplit[0]
Case 3
$sExclude_List_Folder = $aMaskSplit[3]
ContinueCase
Case 2
$sExclude_List = $aMaskSplit[2]
ContinueCase
Case 1
$sInclude_List = $aMaskSplit[1]
EndSwitch
Local $sInclude_File_Mask = ".+"
If $sInclude_List <> "*" Then
If Not __FLTAR_ListToMask($sInclude_File_Mask, $sInclude_List) Then Return SetError(1, 2, "")
EndIf
Local $sInclude_Folder_Mask = ".+"
Switch $iReturn
Case 0
Switch $iRecur
Case 0
$sInclude_Folder_Mask = $sInclude_File_Mask
EndSwitch
Case 2
$sInclude_Folder_Mask = $sInclude_File_Mask
EndSwitch
Local $sExclude_File_Mask = ":"
If $sExclude_List <> "" Then
If Not __FLTAR_ListToMask($sExclude_File_Mask, $sExclude_List) Then Return SetError(1, 3, "")
EndIf
Local $sExclude_Folder_Mask = ":"
If $iRecur Then
If $sExclude_List_Folder Then
If Not __FLTAR_ListToMask($sExclude_Folder_Mask, $sExclude_List_Folder) Then Return SetError(1, 4, "")
EndIf
If $iReturn = 2 Then
$sExclude_Folder_Mask = $sExclude_File_Mask
EndIf
Else
$sExclude_Folder_Mask = $sExclude_File_Mask
EndIf
If Not ($iReturn = 0 Or $iReturn = 1 Or $iReturn = 2) Then Return SetError(1, 5, "")
If Not ($iSort = 0 Or $iSort = 1 Or $iSort = 2) Then Return SetError(1, 7, "")
If Not ($iReturnPath = 0 Or $iReturnPath = 1 Or $iReturnPath = 2) Then Return SetError(1, 8, "")
If $iHide_Link Then
Local $tFile_Data = DllStructCreate("struct;align 4;dword FileAttributes;uint64 CreationTime;uint64 LastAccessTime;uint64 LastWriteTime;" &  "dword FileSizeHigh;dword FileSizeLow;dword Reserved0;dword Reserved1;wchar FileName[260];wchar AlternateFileName[14];endstruct")
Local $hDLL = DllOpen('kernel32.dll'), $aDLL_Ret
EndIf
Local $asReturnList[100] = [0]
Local $asFileMatchList = $asReturnList, $asRootFileMatchList = $asReturnList, $asFolderMatchList = $asReturnList
Local $bFolder = False,  $hSearch = 0,  $sCurrentPath = "", $sName = "", $sRetPath = ""
Local $iAttribs = 0,  $sAttribs = ''
Local $asFolderFileSectionList[100][2] = [[0, 0]]
While $asFolderSearchList[0] > 0
$sCurrentPath = $asFolderSearchList[$asFolderSearchList[0]]
$asFolderSearchList[0] -= 1
Switch $iReturnPath
Case 1
$sRetPath = StringReplace($sCurrentPath, $sFilePath, "")
Case 2
If $bLongPath Then
$sRetPath = StringTrimLeft($sCurrentPath, 4)
Else
$sRetPath = $sCurrentPath
EndIf
EndSwitch
If $iHide_Link Then
$aDLL_Ret = DllCall($hDLL, 'handle', 'FindFirstFileW', 'wstr', $sCurrentPath & "*", 'struct*', $tFile_Data)
If @error Or Not $aDLL_Ret[0] Then
ContinueLoop
EndIf
$hSearch = $aDLL_Ret[0]
Else
$hSearch = FileFindFirstFile($sCurrentPath & "*")
If $hSearch = -1 Then
ContinueLoop
EndIf
EndIf
If $iReturn = 0 And $iSort And $iReturnPath Then
__FLTAR_AddToList($asFolderFileSectionList, $sRetPath, $asFileMatchList[0] + 1)
EndIf
$sAttribs = ''
While 1
If $iHide_Link Then
$aDLL_Ret = DllCall($hDLL, 'int', 'FindNextFileW', 'handle', $hSearch, 'struct*', $tFile_Data)
If @error Or Not $aDLL_Ret[0] Then
ExitLoop
EndIf
$sName = DllStructGetData($tFile_Data, "FileName")
If $sName = ".." Or $sName = "." Then
ContinueLoop
EndIf
$iAttribs = DllStructGetData($tFile_Data, "FileAttributes")
If $iHide_HS And BitAND($iAttribs, $iHide_HS) Then
ContinueLoop
EndIf
If BitAND($iAttribs, $iHide_Link) Then
ContinueLoop
EndIf
$bFolder = False
If BitAND($iAttribs, 16) Then
$bFolder = True
EndIf
Else
$bFolder = False
$sName = FileFindNextFile($hSearch, 1)
If @error Then
ExitLoop
EndIf
If $sName = ".." Or $sName = "." Then
ContinueLoop
EndIf
$sAttribs = @extended
If StringInStr($sAttribs, "D") Then
$bFolder = True
EndIf
If StringRegExp($sAttribs, "[" & $sHide_HS & "]") Then
ContinueLoop
EndIf
EndIf
If $bFolder Then
Select
Case $iRecur < 0
StringReplace($sCurrentPath, "\", "", 0, $STR_NOCASESENSEBASIC)
If @extended < $iMaxLevel Then
ContinueCase
EndIf
Case $iRecur = 1
If Not StringRegExp($sName, $sExclude_Folder_Mask) Then
__FLTAR_AddToList($asFolderSearchList, $sCurrentPath & $sName & "\")
EndIf
EndSelect
EndIf
If $iSort Then
If $bFolder Then
If StringRegExp($sName, $sInclude_Folder_Mask) And Not StringRegExp($sName, $sExclude_Folder_Mask) Then
__FLTAR_AddToList($asFolderMatchList, $sRetPath & $sName & $sFolderSlash)
EndIf
Else
If StringRegExp($sName, $sInclude_File_Mask) And Not StringRegExp($sName, $sExclude_File_Mask) Then
If $sCurrentPath = $sFilePath Then
__FLTAR_AddToList($asRootFileMatchList, $sRetPath & $sName)
Else
__FLTAR_AddToList($asFileMatchList, $sRetPath & $sName)
EndIf
EndIf
EndIf
Else
If $bFolder Then
If $iReturn <> 1 And StringRegExp($sName, $sInclude_Folder_Mask) And Not StringRegExp($sName, $sExclude_Folder_Mask) Then
__FLTAR_AddToList($asReturnList, $sRetPath & $sName & $sFolderSlash)
EndIf
Else
If $iReturn <> 2 And StringRegExp($sName, $sInclude_File_Mask) And Not StringRegExp($sName, $sExclude_File_Mask) Then
__FLTAR_AddToList($asReturnList, $sRetPath & $sName)
EndIf
EndIf
EndIf
WEnd
If $iHide_Link Then
DllCall($hDLL, 'int', 'FindClose', 'ptr', $hSearch)
Else
FileClose($hSearch)
EndIf
WEnd
If $iHide_Link Then
DllClose($hDLL)
EndIf
If $iSort Then
Switch $iReturn
Case 2
If $asFolderMatchList[0] = 0 Then Return SetError(1, 9, "")
ReDim $asFolderMatchList[$asFolderMatchList[0] + 1]
$asReturnList = $asFolderMatchList
__ArrayDualPivotSort($asReturnList, 1, $asReturnList[0])
Case 1
If $asRootFileMatchList[0] = 0 And $asFileMatchList[0] = 0 Then Return SetError(1, 9, "")
If $iReturnPath = 0 Then
__FLTAR_AddFileLists($asReturnList, $asRootFileMatchList, $asFileMatchList)
__ArrayDualPivotSort($asReturnList, 1, $asReturnList[0])
Else
__FLTAR_AddFileLists($asReturnList, $asRootFileMatchList, $asFileMatchList, 1)
EndIf
Case 0
If $asRootFileMatchList[0] = 0 And $asFolderMatchList[0] = 0 Then Return SetError(1, 9, "")
If $iReturnPath = 0 Then
__FLTAR_AddFileLists($asReturnList, $asRootFileMatchList, $asFileMatchList)
$asReturnList[0] += $asFolderMatchList[0]
ReDim $asFolderMatchList[$asFolderMatchList[0] + 1]
_ArrayConcatenate($asReturnList, $asFolderMatchList, 1)
__ArrayDualPivotSort($asReturnList, 1, $asReturnList[0])
Else
Local $asReturnList[$asFileMatchList[0] + $asRootFileMatchList[0] + $asFolderMatchList[0] + 1]
$asReturnList[0] = $asFileMatchList[0] + $asRootFileMatchList[0] + $asFolderMatchList[0]
__ArrayDualPivotSort($asRootFileMatchList, 1, $asRootFileMatchList[0])
For $i = 1 To $asRootFileMatchList[0]
$asReturnList[$i] = $asRootFileMatchList[$i]
Next
Local $iNextInsertionIndex = $asRootFileMatchList[0] + 1
__ArrayDualPivotSort($asFolderMatchList, 1, $asFolderMatchList[0])
Local $sFolderToFind = ""
For $i = 1 To $asFolderMatchList[0]
$asReturnList[$iNextInsertionIndex] = $asFolderMatchList[$i]
$iNextInsertionIndex += 1
If $sFolderSlash Then
$sFolderToFind = $asFolderMatchList[$i]
Else
$sFolderToFind = $asFolderMatchList[$i] & "\"
EndIf
Local $iFileSectionEndIndex = 0, $iFileSectionStartIndex = 0
For $j = 1 To $asFolderFileSectionList[0][0]
If $sFolderToFind = $asFolderFileSectionList[$j][0] Then
$iFileSectionStartIndex = $asFolderFileSectionList[$j][1]
If $j = $asFolderFileSectionList[0][0] Then
$iFileSectionEndIndex = $asFileMatchList[0]
Else
$iFileSectionEndIndex = $asFolderFileSectionList[$j + 1][1] - 1
EndIf
If $iSort = 1 Then
__ArrayDualPivotSort($asFileMatchList, $iFileSectionStartIndex, $iFileSectionEndIndex)
EndIf
For $k = $iFileSectionStartIndex To $iFileSectionEndIndex
$asReturnList[$iNextInsertionIndex] = $asFileMatchList[$k]
$iNextInsertionIndex += 1
Next
ExitLoop
EndIf
Next
Next
EndIf
EndSwitch
Else
If $asReturnList[0] = 0 Then Return SetError(1, 9, "")
ReDim $asReturnList[$asReturnList[0] + 1]
EndIf
Return $asReturnList
EndFunc
Func __FLTAR_AddFileLists(ByRef $asTarget, $asSource_1, $asSource_2, $iSort = 0)
ReDim $asSource_1[$asSource_1[0] + 1]
If $iSort = 1 Then __ArrayDualPivotSort($asSource_1, 1, $asSource_1[0])
$asTarget = $asSource_1
$asTarget[0] += $asSource_2[0]
ReDim $asSource_2[$asSource_2[0] + 1]
If $iSort = 1 Then __ArrayDualPivotSort($asSource_2, 1, $asSource_2[0])
_ArrayConcatenate($asTarget, $asSource_2, 1)
EndFunc
Func __FLTAR_AddToList(ByRef $aList, $vValue_0, $vValue_1 = -1)
If $vValue_1 = -1 Then
$aList[0] += 1
If UBound($aList) <= $aList[0] Then ReDim $aList[UBound($aList) * 2]
$aList[$aList[0]] = $vValue_0
Else
$aList[0][0] += 1
If UBound($aList) <= $aList[0][0] Then ReDim $aList[UBound($aList) * 2][2]
$aList[$aList[0][0]][0] = $vValue_0
$aList[$aList[0][0]][1] = $vValue_1
EndIf
EndFunc
Func __FLTAR_ListToMask(ByRef $sMask, $sList)
If StringRegExp($sList, "\\|/|:|\<|\>|\|") Then Return 0
$sList = StringReplace(StringStripWS(StringRegExpReplace($sList, "\s*;\s*", ";"), BitOR($STR_STRIPLEADING, $STR_STRIPTRAILING)), ";", "|")
$sList = StringReplace(StringReplace(StringRegExpReplace($sList, "[][$^.{}()+\-]", "\\$0"), "?", "."), "*", ".*?")
$sMask = "(?i)^(" & $sList & ")\z"
Return 1
EndFunc
Func _FilePrint($sFilePath, $iShow = @SW_HIDE)
Return ShellExecute($sFilePath, "", @WorkingDir, "print", $iShow = Default ? @SW_HIDE : $iShow)
EndFunc
Func _FileReadToArray($sFilePath, ByRef $vReturn, $iFlags = $FRTA_COUNT, $sDelimiter = "")
$vReturn = 0
If $iFlags = Default Then $iFlags = $FRTA_COUNT
If $sDelimiter = Default Then $sDelimiter = ""
Local $bExpand = True
If BitAND($iFlags, $FRTA_INTARRAYS) Then
$bExpand = False
$iFlags -= $FRTA_INTARRAYS
EndIf
Local $iEntire = $STR_CHRSPLIT
If BitAND($iFlags, $FRTA_ENTIRESPLIT) Then
$iEntire = $STR_ENTIRESPLIT
$iFlags -= $FRTA_ENTIRESPLIT
EndIf
Local $iNoCount = 0
If $iFlags <> $FRTA_COUNT Then
$iFlags = $FRTA_NOCOUNT
$iNoCount = $STR_NOCOUNT
EndIf
If $sDelimiter Then
Local $aLines = FileReadToArray($sFilePath)
If @error Then Return SetError(@error, 0, 0)
Local $iDim_1 = UBound($aLines) + $iFlags
If $bExpand Then
Local $iDim_2 = UBound(StringSplit($aLines[0], $sDelimiter, $iEntire + $STR_NOCOUNT))
Local $aTemp_Array[$iDim_1][$iDim_2]
Local $iFields,  $aSplit
For $i = 0 To $iDim_1 - $iFlags - 1
$aSplit = StringSplit($aLines[$i], $sDelimiter, $iEntire + $STR_NOCOUNT)
$iFields = UBound($aSplit)
If $iFields <> $iDim_2 Then
Return SetError(3, 0, 0)
EndIf
For $j = 0 To $iFields - 1
$aTemp_Array[$i + $iFlags][$j] = $aSplit[$j]
Next
Next
If $iDim_2 < 2 Then Return SetError(4, 0, 0)
If $iFlags Then
$aTemp_Array[0][0] = $iDim_1 - $iFlags
$aTemp_Array[0][1] = $iDim_2
EndIf
Else
Local $aTemp_Array[$iDim_1]
For $i = 0 To $iDim_1 - $iFlags - 1
$aTemp_Array[$i + $iFlags] = StringSplit($aLines[$i], $sDelimiter, $iEntire + $iNoCount)
Next
If $iFlags Then
$aTemp_Array[0] = $iDim_1 - $iFlags
EndIf
EndIf
$vReturn = $aTemp_Array
Else
If $iFlags Then
Local $hFileOpen = FileOpen($sFilePath, $FO_READ)
If $hFileOpen = -1 Then Return SetError(1, 0, 0)
Local $sFileRead = FileRead($hFileOpen)
FileClose($hFileOpen)
If StringLen($sFileRead) Then
$vReturn = StringRegExp(@LF & $sFileRead, "(?|(\N+)\z|(\N*)(?:\R))", $STR_REGEXPARRAYGLOBALMATCH)
$vReturn[0] = UBound($vReturn) - 1
Else
Return SetError(2, 0, 0)
EndIf
Else
$vReturn = FileReadToArray($sFilePath)
If @error Then
$vReturn = 0
Return SetError(@error, 0, 0)
EndIf
EndIf
EndIf
Return 1
EndFunc
Func _FileWriteFromArray($sFilePath, Const ByRef $aArray, $iBase = Default, $iUBound = Default, $sDelimiter = "|")
Local $iReturn = 0
If Not IsArray($aArray) Then Return SetError(2, 0, $iReturn)
Local $iDims = UBound($aArray, $UBOUND_DIMENSIONS)
If $iDims > 2 Then Return SetError(4, 0, 0)
Local $iLast = UBound($aArray) - 1
If $iUBound = Default Or $iUBound > $iLast Then $iUBound = $iLast
If $iBase < 0 Or $iBase = Default Then $iBase = 0
If $iBase > $iUBound Then Return SetError(5, 0, $iReturn)
If $sDelimiter = Default Then $sDelimiter = "|"
Local $hFileOpen = $sFilePath
If IsString($sFilePath) Then
$hFileOpen = FileOpen($sFilePath, $FO_OVERWRITE)
If $hFileOpen = -1 Then Return SetError(1, 0, $iReturn)
EndIf
Local $iError = 0
$iReturn = 1
Switch $iDims
Case 1
For $i = $iBase To $iUBound
If Not FileWrite($hFileOpen, $aArray[$i] & @CRLF) Then
$iError = 3
$iReturn = 0
ExitLoop
EndIf
Next
Case 2
Local $sTemp = ""
For $i = $iBase To $iUBound
$sTemp = $aArray[$i][0]
For $j = 1 To UBound($aArray, $UBOUND_COLUMNS) - 1
$sTemp &= $sDelimiter & $aArray[$i][$j]
Next
If Not FileWrite($hFileOpen, $sTemp & @CRLF) Then
$iError = 3
$iReturn = 0
ExitLoop
EndIf
Next
EndSwitch
If IsString($sFilePath) Then FileClose($hFileOpen)
Return SetError($iError, 0, $iReturn)
EndFunc
Func _FileWriteLog($sLogPath, $sLogMsg, $iFlag = -1)
Local $iOpenMode = $FO_APPEND
Local $sMsg = @YEAR & "-" & @MON & "-" & @MDAY & " " & @HOUR & ":" & @MIN & ":" & @SEC & " : " & $sLogMsg
If $iFlag = Default Then $iFlag = -1
If $iFlag <> -1 Then
$iOpenMode = $FO_OVERWRITE
$sMsg &= @CRLF & FileRead($sLogPath)
EndIf
Local $hFileOpen = $sLogPath
If IsString($sLogPath) Then $hFileOpen = FileOpen($sLogPath, $iOpenMode)
If $hFileOpen = -1 Then Return SetError(1, 0, 0)
Local $iReturn = FileWriteLine($hFileOpen, $sMsg)
If IsString($sLogPath) Then $iReturn = FileClose($hFileOpen)
If $iFlag <> -1 And Not IsString($sLogPath) Then SetExtended(1)
If $iReturn = 0 Then Return SetError(2, 0, 0)
Return $iReturn
EndFunc
Func _FileWriteToLine($sFilePath, $iLine, $sText, $bOverWrite = False, $bFill = False)
If $bOverWrite = Default Then $bOverWrite = False
If $bFill = Default Then $bFill = False
If Not FileExists($sFilePath) Then Return SetError(2, 0, 0)
If $iLine <= 0 Then Return SetError(4, 0, 0)
If Not (IsBool($bOverWrite) Or $bOverWrite = 0 Or $bOverWrite = 1) Then Return SetError(5, 0, 0)
If Not IsString($sText) Then
$sText = String($sText)
If $sText = "" Then Return SetError(6, 0, 0)
EndIf
If Not IsBool($bFill) Then Return SetError(7, 0, 0)
Local $aArray = FileReadToArray($sFilePath)
If @error Then Local $aArray[0]
Local $iUBound = UBound($aArray) - 1
If $bFill Then
If $iUBound < $iLine Then
ReDim $aArray[$iLine]
$iUBound = $iLine - 1
EndIf
Else
If ($iUBound + 1) < $iLine Then Return SetError(1, 0, 0)
EndIf
$aArray[$iLine - 1] = ($bOverWrite ? $sText : $sText & @CRLF & $aArray[$iLine - 1])
Local $sData = ""
For $i = 0 To $iUBound
$sData &= $aArray[$i] & @CRLF
Next
$sData = StringTrimRight($sData, StringLen(@CRLF))
Local $hFileOpen = FileOpen($sFilePath, FileGetEncoding($sFilePath) + $FO_OVERWRITE)
If $hFileOpen = -1 Then Return SetError(3, 0, 0)
FileWrite($hFileOpen, $sData)
FileClose($hFileOpen)
Return 1
EndFunc
Func _PathFull($sRelativePath, $sBasePath = @WorkingDir)
If Not $sRelativePath Or $sRelativePath = "." Then Return $sBasePath
Local $sFullPath = StringReplace($sRelativePath, "/", "\")
Local Const $sFullPathConst = $sFullPath
Local $sPath
Local $bRootOnly = StringLeft($sFullPath, 1) = "\" And StringMid($sFullPath, 2, 1) <> "\"
If $sBasePath = Default Then $sBasePath = @WorkingDir
For $i = 1 To 2
$sPath = StringLeft($sFullPath, 2)
If $sPath = "\\" Then
$sFullPath = StringTrimLeft($sFullPath, 2)
Local $nServerLen = StringInStr($sFullPath, "\") - 1
$sPath = "\\" & StringLeft($sFullPath, $nServerLen)
$sFullPath = StringTrimLeft($sFullPath, $nServerLen)
ExitLoop
ElseIf StringRight($sPath, 1) = ":" Then
$sFullPath = StringTrimLeft($sFullPath, 2)
ExitLoop
Else
$sFullPath = $sBasePath & "\" & $sFullPath
EndIf
Next
If StringLeft($sFullPath, 1) <> "\" Then
If StringLeft($sFullPathConst, 2) = StringLeft($sBasePath, 2) Then
$sFullPath = $sBasePath & "\" & $sFullPath
Else
$sFullPath = "\" & $sFullPath
EndIf
EndIf
Local $aTemp = StringSplit($sFullPath, "\")
Local $aPathParts[$aTemp[0]], $j = 0
For $i = 2 To $aTemp[0]
If $aTemp[$i] = ".." Then
If $j Then $j -= 1
ElseIf Not ($aTemp[$i] = "" And $i <> $aTemp[0]) And $aTemp[$i] <> "." Then
$aPathParts[$j] = $aTemp[$i]
$j += 1
EndIf
Next
$sFullPath = $sPath
If Not $bRootOnly Then
For $i = 0 To $j - 1
$sFullPath &= "\" & $aPathParts[$i]
Next
Else
$sFullPath &= $sFullPathConst
If StringInStr($sFullPath, "..") Then $sFullPath = _PathFull($sFullPath)
EndIf
Do
$sFullPath = StringReplace($sFullPath, ".\", "\")
Until @extended = 0
Return $sFullPath
EndFunc
Func _PathGetRelative($sFrom, $sTo)
If StringRight($sFrom, 1) <> "\" Then $sFrom &= "\"
If StringRight($sTo, 1) <> "\" Then $sTo &= "\"
If $sFrom = $sTo Then Return SetError(1, 0, StringTrimRight($sTo, 1))
Local $asFrom = StringSplit($sFrom, "\")
Local $asTo = StringSplit($sTo, "\")
If $asFrom[1] <> $asTo[1] Then Return SetError(2, 0, StringTrimRight($sTo, 1))
Local $i = 2
Local $iDiff = 1
While 1
If $asFrom[$i] <> $asTo[$i] Then
$iDiff = $i
ExitLoop
EndIf
$i += 1
WEnd
$i = 1
Local $sRelPath = ""
For $j = 1 To $asTo[0]
If $i >= $iDiff Then
$sRelPath &= "\" & $asTo[$i]
EndIf
$i += 1
Next
$sRelPath = StringTrimLeft($sRelPath, 1)
$i = 1
For $j = 1 To $asFrom[0]
If $i > $iDiff Then
$sRelPath = "..\" & $sRelPath
EndIf
$i += 1
Next
If StringRight($sRelPath, 1) == "\" Then $sRelPath = StringTrimRight($sRelPath, 1)
Return $sRelPath
EndFunc
Func _PathMake($sDrive, $sDir, $sFileName, $sExtension)
If StringLen($sDrive) Then
If Not (StringLeft($sDrive, 2) = "\\") Then $sDrive = StringLeft($sDrive, 1) & ":"
EndIf
If StringLen($sDir) Then
If Not (StringRight($sDir, 1) = "\") And Not (StringRight($sDir, 1) = "/") Then $sDir = $sDir & "\"
Else
$sDir = "\"
EndIf
If StringLen($sDir) Then
If Not (StringLeft($sDir, 1) = "\") And Not (StringLeft($sDir, 1) = "/") Then $sDir = "\" & $sDir
EndIf
If StringLen($sExtension) Then
If Not (StringLeft($sExtension, 1) = ".") Then $sExtension = "." & $sExtension
EndIf
Return $sDrive & $sDir & $sFileName & $sExtension
EndFunc
Func _PathSplit($sFilePath, ByRef $sDrive, ByRef $sDir, ByRef $sFileName, ByRef $sExtension)
Local $aArray = StringRegExp($sFilePath, "^\h*((?:\\\\\?\\)*(\\\\[^\?\/\\]+|[A-Za-z]:)?(.*[\/\\]\h*)?((?:[^\.\/\\]|(?(?=\.[^\/\\]*\.)\.))*)?([^\/\\]*))$", $STR_REGEXPARRAYMATCH)
If @error Then
ReDim $aArray[5]
$aArray[$PATH_ORIGINAL] = $sFilePath
EndIf
$sDrive = $aArray[$PATH_DRIVE]
If StringLeft($aArray[$PATH_DIRECTORY], 1) == "/" Then
$sDir = StringRegExpReplace($aArray[$PATH_DIRECTORY], "\h*[\/\\]+\h*", "\/")
Else
$sDir = StringRegExpReplace($aArray[$PATH_DIRECTORY], "\h*[\/\\]+\h*", "\\")
EndIf
$aArray[$PATH_DIRECTORY] = $sDir
$sFileName = $aArray[$PATH_FILENAME]
$sExtension = $aArray[$PATH_EXTENSION]
Return $aArray
EndFunc
Func _ReplaceStringInFile($sFilePath, $sSearchString, $sReplaceString, $iCaseSensitive = 0, $iOccurance = 1)
If StringInStr(FileGetAttrib($sFilePath), "R") Then Return SetError(1, 0, -1)
Local $hFileOpen = FileOpen($sFilePath, $FO_READ)
If $hFileOpen = -1 Then Return SetError(2, 0, -1)
Local $sFileRead = FileRead($hFileOpen)
FileClose($hFileOpen)
If $iCaseSensitive = Default Then $iCaseSensitive = 0
If $iOccurance = Default Then $iOccurance = 1
$sFileRead = StringReplace($sFileRead, $sSearchString, $sReplaceString, 1 - $iOccurance, $iCaseSensitive)
Local $iReturn = @extended
If $iReturn Then
Local $iFileEncoding = FileGetEncoding($sFilePath)
$hFileOpen = FileOpen($sFilePath, $iFileEncoding + $FO_OVERWRITE)
If $hFileOpen = -1 Then Return SetError(3, 0, -1)
FileWrite($hFileOpen, $sFileRead)
FileClose($hFileOpen)
EndIf
Return $iReturn
EndFunc
Func _TempFile($sDirectoryName = @TempDir, $sFilePrefix = "~", $sFileExtension = ".tmp", $iRandomLength = 7)
If $iRandomLength = Default Or $iRandomLength <= 0 Then $iRandomLength = 7
If $sDirectoryName = Default Or (Not FileExists($sDirectoryName)) Then $sDirectoryName = @TempDir
If $sFileExtension = Default Then $sFileExtension = ".tmp"
If $sFilePrefix = Default Then $sFilePrefix = "~"
If Not FileExists($sDirectoryName) Then $sDirectoryName = @ScriptDir
$sDirectoryName = StringRegExpReplace($sDirectoryName, "[\\/]+$", "")
$sFileExtension = StringRegExpReplace($sFileExtension, "^\.+", "")
$sFilePrefix = StringRegExpReplace($sFilePrefix, '[\\/:*?"<>|]', "")
Local $sTempName = ""
Do
$sTempName = ""
While StringLen($sTempName) < $iRandomLength
$sTempName &= Chr(Random(97, 122, 1))
WEnd
$sTempName = $sDirectoryName & "\" & $sFilePrefix & $sTempName & "." & $sFileExtension
Until Not FileExists($sTempName)
Return $sTempName
EndFunc
#Region
#AutoIt3Wrapper_UseX64=y
#AutoIt3Wrapper_Run_Tidy=y
#Tidy_Parameters=/reel
#EndRegion
Global $_gh_aLangFileArray = -1
Global $_gh_sLangFileSelected = -1
Global $_gh_sLangFileData = -1
Func __MultiLang_SetFileInfo($aLangFileArray)
If IsArray($aLangFileArray) = 0 Then Return SetError(1, 0, 0)
If UBound($aLangFileArray, 0) <> 2 Then Return SetError(2, 0, 0)
If UBound($aLangFileArray, 2) <> 3 Then Return SetError(2, 0, 0)
$_gh_aLangFileArray = $aLangFileArray
Return 1
EndFunc
Func _MultiLang_LoadLangFile($nLangCode)
Local $ret = 1
$_gh_sLangFileSelected = -1
If $_gh_aLangFileArray = -1 Then Return SetError(1, 0, 0)
If IsArray($_gh_aLangFileArray) = 0 Then Return SetError(1, 0, 0)
For $i = 0 To UBound($_gh_aLangFileArray) - 1
If StringInStr($_gh_aLangFileArray[$i][2], $nLangCode) Then
$_gh_sLangFileSelected = $_gh_aLangFileArray[$i][1]
ExitLoop
EndIf
Next
If $_gh_sLangFileSelected == -1 Then
$_gh_sLangFileSelected = $_gh_aLangFileArray[0][1]
$ret = 2
EndIf
$_gh_sLangFileData = FileRead($_gh_sLangFileSelected)
If @error Then Return SetError(2, 0, 0)
Return $ret
EndFunc
Func _MultiLang_GetText($sControl, $multiline = 0, $default = "Unknown Text")
If $_gh_aLangFileArray = -1 Then Return SetError(1, 0, 0)
If IsArray($_gh_aLangFileArray) = 0 Then Return SetError(1, 0, 0)
If $_gh_sLangFileData = -1 Then Return SetError(2, 0, 0)
Local $a_ret = StringRegExp($_gh_sLangFileData, '<(?i)' & $sControl & '>(.*?)</(?i)' & $sControl & '>', 3)
If Not @error Then
$a_ret = StringStripWS($a_ret[0], 2)
If $multiline = 1 Then
$a_ret = StringReplace($a_ret, "@CRLF", @CRLF)
$a_ret = StringReplace($a_ret, "@LF", @LF)
$a_ret = StringReplace($a_ret, "@CR", @CR)
EndIf
Return $a_ret
EndIf
Return SetError(3, 0, $default)
EndFunc
Func _MultiLang_SelectGUI($title, $text, $default = @OSLang)
If $_gh_aLangFileArray = -1 Then Return SetError(1, 0, 0)
If IsArray($_gh_aLangFileArray) = 0 Then Return SetError(1, 0, 0)
$_multilang_gui_GUI = GUICreate($title, 230, 100)
$_multilang_gui_Combo = GUICtrlCreateCombo("(Select A Language)", 8, 48, 209, 25, 0x0003)
$_multilang_gui_Button = GUICtrlCreateButton("Select", 144, 72, 75, 25)
$_multilang_gui_Label = GUICtrlCreateLabel($text, 8, 8, 212, 33)
For $i = 0 To UBound($_gh_aLangFileArray) - 1
GUICtrlSetData($_multilang_gui_Combo, $_gh_aLangFileArray[$i][0], "(Select A Language)")
Next
GUISetState(@SW_SHOW)
While 1
$nMsg = GUIGetMsg()
Switch $nMsg
Case -3, $_multilang_gui_Button
ExitLoop
EndSwitch
WEnd
$_selected = GUICtrlRead($_multilang_gui_Combo)
GUIDelete($_multilang_gui_GUI)
For $i = 0 To UBound($_gh_aLangFileArray) - 1
If StringInStr($_gh_aLangFileArray[$i][0], $_selected) Then
Return StringLeft($_gh_aLangFileArray[$i][2], 4)
EndIf
Next
Return $default
EndFunc
Func _MultiLang_Close()
$_gh_aLangFileArray = -1
$_gh_sLangFileSelected = -1
$_gh_sLangFileData = -1
EndFunc
Func _MultiLang_Config($LANG_DIR)
Local $LANGFILES[3][3]
$LANGFILES[0][0] = "English (US)"
$LANGFILES[0][1] = $LANG_DIR & "\ENGLISH.XML"
$LANGFILES[0][2] = "0409 " &  "0809 " &  "0c09 " &  "1009 " &  "1409 " &  "1809 " &  "1c09 " &  "2009 " &  "2409 " &  "2809 " &  "2c09 " &  "3009 " &  "3409"
$LANGFILES[1][0] = "Français"
$LANGFILES[1][1] = $LANG_DIR & "\FRENCH.XML"
$LANGFILES[1][2] = "040c " &  "080c " &  "0c0c " &  "100c " &  "140c " &  "180c"
__MultiLang_SetFileInfo($LANGFILES)
If @error Then
MsgBox(48, "Error", "Could not set file info.  Error Code " & @error)
Exit
EndIf
EndFunc
$head = ' V1.1.1.1'
FileInstall('MultiMonitorTool.exe', @TempDir & '\', $FC_OVERWRITE)
FileInstall('.\LngFiles\FRENCH.XML', @TempDir & '\', $FC_OVERWRITE + $FC_CREATEPATH)
FileInstall('.\LngFiles\ENGLISH.XML', @TempDir & '\', $FC_OVERWRITE + $FC_CREATEPATH)
Global $FileToOpen, $atextMon, $l = 0, $sCombo = ''
$sVLCPath = _SearchPath()
_MultiLang_Config(@TempDir & '\')
If @error Then
MsgBox(16, 'Error', 'Error: cannot set config language files' & @CRLF & 'Default language will be loaded')
EndIf
_MultiLang_LoadLangFile(@MUILang)
If @error Then
MsgBox(16, 'Error', 'Error: cannot opening language files' & @CRLF & 'Default language will be loaded')
EndIf
#Region ### START Koda GUI section ### Form=
GUICreate(_MultiLang_GetText('Head', 1, 'Play video') & $head, 300, 135)
$ButtonO = GUICtrlCreateButton(_MultiLang_GetText('ButtonO', 0, 'Open video file'), 5, 5, 90, 25)
$ButtonP = GUICtrlCreateButton(_MultiLang_GetText('ButtonP', 0, 'Play video'), 105, 5, 90, 25)
$ButtonS = GUICtrlCreateButton(_MultiLang_GetText('ButtonS', 0, 'Stop video'), 205, 5, 90, 25)
$Group1 = GUICtrlCreateGroup(' ' & _MultiLang_GetText('Group1', 0, 'Choose the screen') & ' ', 5, 35, 290, 50)
$Label = GUICtrlCreateLabel("", 5, 85, 290, 45, $SS_LEFT)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
#Region Detect Monitor
Local $iPID = RunWait(@ComSpec & ' /c ' & @TempDir & '\MultiMonitorTool.exe /stab ' & @TempDir & '\MultiMonitorTool.txt', @SystemDir, @SW_HIDE)
_FileReadToArray(@TempDir & '\MultiMonitorTool.txt', $atextMon, Default, Chr(9))
$Mon = $atextMon[0][0]
Global $aVLCDisplay[$Mon][4]
_ArraySort($atextMon, Default, 2, Default, 10)
#EndRegion Detect Monitor
If $Mon > 2 Then
For $i = 2 To $Mon
$aCoorMon = StringSplit($atextMon[$i][1], ",")
$aVLCDisplay[$i - 1][1] = $aCoorMon[1]
$aVLCDisplay[$i - 1][2] = $aCoorMon[2]
If StringStripWS($atextMon[$i][18], 8) = '' Then
$l = $l + 1
$aVLCDisplay[$i - 1][3] = $i - 1 & '. No Name screen ' & $l
Else
$aVLCDisplay[$i - 1][3] = $i - 1 & '. ' & $atextMon[$i][18]
EndIf
If $aCoorMon[1] = 0 And $aCoorMon[2] = 0 Then
$aVLCDisplay[$i - 1][3] &= _MultiLang_GetText('MainScreen', 0, ' (Main screen)')
EndIf
$sCombo &= $aVLCDisplay[$i - 1][3]
If $i <> $Mon Then
$sCombo &= '|'
EndIf
Next
$Combo = GUICtrlCreateCombo("", 45, 52, 200, 21, BitOR($GUI_SS_DEFAULT_COMBO, $CBS_DROPDOWNLIST))
GUICtrlSetData($Combo, $sCombo)
Else
$Combo = GUICtrlCreateCombo(_MultiLang_GetText('Combo', 0, '1. Main screen'), 45, 52, 200, 21, BitOR($GUI_SS_DEFAULT_COMBO, $CBS_DROPDOWNLIST))
$aVLCDisplay[1][1] = 0
$aVLCDisplay[1][2] = 0
EndIf
GUISetState(@SW_SHOW)
While 1
$msg = GUIGetMsg()
Select
Case $msg = $GUI_EVENT_CLOSE
Exit
Case $msg = $ButtonO
$Open = FileOpenDialog(_MultiLang_GetText('ButtonO', 0, 'Open video file'), @WorkingDir, "All (*.*)", Default, "", GUICreate(""))
If Not @error Then
$FileToOpen = $Open
GUICtrlSetData($Label, $FileToOpen)
Else
$Open = ""
EndIf
Case $msg = $ButtonP
If $FileToOpen <> "" And GUICtrlRead($Combo) <> '' Then
$Num = StringLeft(GUICtrlRead($Combo), 1)
ShellExecute($sVLCPath, '"' & $FileToOpen & '" --video-x=' & $aVLCDisplay[$Num][1] + 10 & ' --video-y=' & $aVLCDisplay[$Num][2] + 10 & ' --no-embedded-video -f --video-on-top --play-and-exit --no-osd --no-spu --qt-start-minimized')
EndIf
Case $msg = $ButtonS
WinActivate('VLC')
Send('^q')
WinKill('VLC')
ProcessWaitClose('vlc.exe', 30)
EndSelect
WEnd
Func _SearchPath()
$PathExe = StringSplit(RegRead("HKEY_CLASSES_ROOT\Applications\vlc.exe\shell\Open\command", ""), Chr(34))
If $PathExe[0] < 2 Then
MsgBox(0, _MultiLang_GetText('Error', 0, 'Error'), _MultiLang_GetText('VLCNotThere', 0, 'VLC is not installed on this PC, Please (re-)install VLC: www.videolan.org'))
Exit
Else
Return Chr(34) & $PathExe[2] & Chr(34)
EndIf
EndFunc
