#NoEnv
SetWorkingDir %A_ScriptDir%
CoordMode, Mouse, Window
SendMode Input
#SingleInstance Force
SetTitleMatchMode 2
DetectHiddenWindows On
#WinActivateForce
SetControlDelay 1
SetWinDelay 0
SetKeyDelay -1
SetMouseDelay -1
SetBatchLines -1


#InstallKeybdHook
#UseHook


MsgBox, 4160,Murk's Translation Macro,
(
For easiest use, go to File > Page Setup, select "Custom" and set it to 30 x 42 cm (that's around A3).
That should make the default text small enough to fit a lot of text into a relatively small space.

Translator commands:

F12	Start drawing rounded rectangle

Proofreader commands:

Ctrl F12	Copy OTL from selected rectangle into comment

General commands:

Numpad +	Zoom in
Numpad -	Zoom out
Numpad /	Reset zoom

Ctrl Shift F12	Exit application
)

actiondelay := 100
actionlongdelay := 350

F12::
	Send, {Alt down}{NumpadDiv}{Alt up} ;Open menu search
	Sleep, actiondelay
	Send, Rounded Rectangle ;Type the command
	Sleep, actionlongdelay
	Send, {Enter} ;Send the command with Enter
Return

^F12:: ;Ctrl F12
	Send, {Ctrl down}c{Ctrl up} ;Copy selected to clipboard
	Sleep, actiondelay
	Send, {Alt down}{NumpadDiv}{Alt up} ;Open menu search
	Sleep, actiondelay
	Send, Add Comment ;Type the command
	Sleep, actionlongdelay
	Send, {Enter} ;Send the command with Enter
	Clipboard := RegexReplace( Clipboard, "^\s+|\s+$" ) ;Remove whitespace around copied text
	Sleep, actionlongdelay
	Send, OTL: "
	Send, {Ctrl down}v{Ctrl up} ;Paste from clipboard
	Send, "
	Sleep, actionlongdelay
	Send, {Ctrl down}{Enter}{Ctrl up} ;Save the comment
Return

NumpadAdd::
    Send, {Ctrl down}{Alt down}{NumpadAdd}{Alt up}{Ctrl up} ;Send Ctrl Alt + (using keypad + for international keyboards)
Return

NumpadSub::
    Send, {Ctrl down}{Alt down}{NumpadSub}{Alt up}{Ctrl up} ;Send Ctrl Alt - (using keypad - for international keyboards)
Return

NumpadMult::
	Send, {Alt down}{NumpadDiv}{Alt up} ;Open menu search
	Sleep, actiondelay
	Send, Zoom To Fit  ;Type the command
	Sleep, actionlongdelay
	Send, {Enter} ;Send the command with Enter
	Sleep, actionlongdelay
	Send, {Escape} ;In case the page is already zoomed to fit, press escape to exit menu search
Return

^+F12:: ;Ctrl Shift F12
	ExitApp
Return