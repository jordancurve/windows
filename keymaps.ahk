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
