#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
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
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#Region    ;Timestamp =====================
#    Last complie at : 2024/11/15 13:57:15
#EndRegion ;Timestamp =====================

#cs ----------------------------------------------------------------------------

	AutoIt Version: v3.3.16.1
	Author:         Cramaboule

	Script Function: open video in full screen

	V1.1.1.1: 	15.11.2024
				Add Stop Button
	V1.1.0.1: 	22.05.2024
				Start minimized
	V1.1.0.0: 	NEW: can use more than 2 screens
				NEW: can be in French and English (English is default)
	V1.0.0.1: 	New feature: remove osd on video 10.05.2022
	V1.0.0.0: 	Initial release 02.12.2011

#ce ----------------------------------------------------------------------------

#include <GUIConstantsEx.au3>
#include <ComboConstants.au3>
#include <FileConstants.au3>
#include <Array.au3>
#include <File.au3>
#include 'MultiLang.au3'

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

; fr= 100c en = 0409
_MultiLang_LoadLangFile(@MUILang) ;@MUILang
If @error Then
	MsgBox(16, 'Error', 'Error: cannot opening language files' & @CRLF & 'Default language will be loaded')
EndIf


;~ $ButtonO = GUICtrlCreateButton(_MultiLang_GetText('ButtonO', 0, 'Open video file'), 5, 5, 135, 25)
;~ $ButtonP = GUICtrlCreateButton(_MultiLang_GetText('ButtonP', 0, 'Play video'), 155, 5, 135, 25)
;~ $Label = GUICtrlCreateLabel("", 5, 95, 290, 35)
;~ $Group1 = GUICtrlCreateGroup(' ' & _MultiLang_GetText('Group1', 0, 'Choose the screen') & ' ', 5, 35, 285, 50)
#Region ### START Koda GUI section ### Form=
GUICreate(_MultiLang_GetText('Head', 1, 'Play video') & $head, 300, 130)
$ButtonO = GUICtrlCreateButton(_MultiLang_GetText('ButtonO', 0, 'Open video file'), 5, 5, 90, 25)
$ButtonP = GUICtrlCreateButton(_MultiLang_GetText('ButtonP', 0, 'Play video'), 105, 5, 90, 25)
$ButtonS = GUICtrlCreateButton(_MultiLang_GetText('ButtonS', 0, 'Stop video'), 205, 5, 90, 25)
$Label = GUICtrlCreateLabel("", 5, 95, 290, 35)
$Group1 = GUICtrlCreateGroup(' ' & _MultiLang_GetText('Group1', 0, 'Choose the screen' & ' '), 5, 35, 290, 50)


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
;~ 				ConsoleWrite($sVLCPath & ' ' & '"' & $FileToOpen & '" --video-x=' & $aVLCDisplay[$Num][1] + 10 & ' --video-y=' & $aVLCDisplay[$Num][2] + 10 & ' --no-embedded-video -f --video-on-top --play-and-exit --no-osd --no-spu --qt-start-minimized' & @CRLF)
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
EndFunc   ;==>_SearchPath