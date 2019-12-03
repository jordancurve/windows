#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
; SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
; SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force

;Send Esc rather than Ctrl when Ctrl is released provided that neither Shift,
;Alt, nor Win is pressed.
;Author: Autohotkey forum user RHCP
;http://www.autohotkey.com/board/topic/103174-dual-function-control-key/
$~*Ctrl::
if !state
    state :=  (GetKeyState("Shift", "P") ||  GetKeyState("Alt", "P") || GetKeyState("LWin", "P") || GetKeyState("RWin", "P"))
return

$~ctrl up::
if instr(A_PriorKey, "control") && !state
    send {esc}
state := 0
return

;Key mappings for typing common math symbols. Abbreviations are mostly
;from latex.

:*:==-::—
:*:\\cdot::·
:*:\\mu::μ
:*:\\sigma::σ
:*:\\ge::≥
:*:\\le::≤
:*:\\theta::θ
:*:\\phi::φ
:*:\\pi::π
:*:\\pm::±
:*:\\gamma::γ
:*:\\s::§
:*:\\rarr::→
:*:\\inf::∞
:*:\\max::∨
:*:\\min::∧
