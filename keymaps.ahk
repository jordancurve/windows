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
;from HTML and LaTeX.

:*C:==-::—
:*C:\cdot.::·
:*C:\mu.::μ
:*C:\sigma.::σ
:*C:\ge.::≥
:*C:\le.::≤
:*C:theta.::θ
:*C:\phi.::φ
:*C:\pi.::π
:*C:\pm.::±
:*C:\gamma.::γ
:*C:\s.::§
:*C:\rarr.::→
:*C:\inf.::∞
:*C:\lor.::∨
:*C:\land.::∧
:*C:\lfloor.::⌊
:*C:\rfloor.::⌋
:*C:\lceil.::⌈
:*C:\rceil.::⌉
:*C:\Delta.::Δ
:*C:\delta.::δ
:*C:\Chi.::Ξ
:*C:\chi.::ξ
:*C:\subseteq.::⊆
:*C:\psubset.::⊂
:*C:\ne.::≠
:*C:\ex.::∃
:*C:\all.::∀
:*C:\epsilon.::∊
:*C:\box.::∎
:*C:\Sigma.::∑
:*C:\N.::ℕ
:*C:\Z.::ℤ
:*C:\Q.::ℚ
:*C:\R.::ℝ
:*C:\emptyset.::∅
:*C:\degree.::°
:*C:\top.::⊤
:*C:\bot.::⊥

;SC07b:: ; how to map the HHKB "diamond" key 
