#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;MouseMove, 70, 300

CoordMode, Mouse, Screen

LButton::
if !GetKeyState("capslock","T") ; whether capslock is on or off

 {
Send, {Click Down}
 }

 else

 {
Send, w
Sleep 30
Send, {Click Down}
 }
return


LButton Up::
if !GetKeyState("capslock","T") ; whether capslock is on or off

 {
Send {Click Up}
 }

 else
 {
Send {Click Up}
Sleep, 200
Send, Path
Send, {Return}
Sleep, 30
Send, {Return}
Sleep, 200
Send, ^s
Sleep, 200
Send, {Return}
 }
return

RButton::
if !GetKeyState("capslock","T") ; whether capslock is on or off

 {
Send, {Click Down}
 }

 else

 {
Sleep 30
Send, {Click Down}
 }
return


RButton Up::
if !GetKeyState("capslock","T") ; whether capslock is on or off

 {
Send {Click Up}
 }

 else
 {
Send {Click Up}
Sleep, 200
Send, Gate
Send, {Return}
Sleep, 30
Send, {Return}
Sleep, 200
Send, ^s
Sleep, 200
Send, {Return}
 }
return

Space::
MouseGetPos, xpos, ypos
MouseMove, 70, 300, 0
Send {Click}
MouseMove, %xpos%, %ypos%, 0
Send, w
return

x:: ExitApp