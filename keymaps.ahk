#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance Force

; Send Esc rather than Ctrl on CtrlUp, if all of the following are true:
; - neither Shift, Alt, nor Win was down immediately before or during CtrlDown
; - the key event prior to CtrlUp was CtrlDown
; The Esc that this script would normally generate on CtrlUp can be prevented
; by pressing Shift, Alt, or Win before CtrlUp.
; Author: Autohotkey forum user RHCP (w/variable renamed by jordancurve)
; http://www.autohotkey.com/board/topic/103174-dual-function-control-key/
$~*Ctrl::
if !otherModifiersPressed {
  otherModifiersPressed := GetKeyState("Shift", "P") 
      || GetKeyState("Alt", "P")
      || GetKeyState("LWin", "P")
      || GetKeyState("RWin", "P")
}
return

$~ctrl up::
if instr(A_PriorKey, "control") && !otherModifiersPressed {
  send {esc}
}
otherModifiersPressed := false
return

;Key mappings for typing common math symbols. Abbreviations are mostly
;from HTML and LaTeX.

#hotstring C O ? Z
::\---::—
::\cdot::·
::\mu::μ
::\sigma::σ
::\ge::≥
::\le::≤
::theta::θ
::\phi::φ
::\pi::π
::\pm::±
::\gamma::γ
::\s::§
::\rarr::→
::\inf::∞
::\lor::∨
::\land::∧
::\lfloor::⌊
::\rfloor::⌋
::\lceil::⌈
::\rceil::⌉
::\Delta::Δ
::\delta::δ
::\Chi::Ξ
::\chi::ξ
::\subseteq::⊆
::\psubset::⊂
::\ne::≠
::\ex::∃
::\all::∀
::\epsilon::∊
::\box::∎
::\Sigma::∑
::\N::ℕ
::\Z::ℤ
::\Q::ℚ
::\R::ℝ
::\emptyset::∅
::\degree::°
::\top::⊤
::\bot::⊥

;SC07b:: ; how to map the HHKB "diamond" key 
