#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance Force

; Send Esc rather than Ctrl on CtrlUp, if all of the following are true:
; - neither Shift, Alt, nor Win was down at the time of CtrlDown
; - the key event prior to CtrlUp was CtrlDown
; - less than 1 s has elapsed between CtrlDown and CtrlUp
; The Esc that this script would normally generate on CtrlUp can be cancelled
; by waiting at least 1 second between CtrlDown and CtrlUp.
; Author: jordancurve. Based on script by Autohotkey forum user RHCP
; http://www.autohotkey.com/board/topic/103174-dual-function-control-key/
$~*Ctrl::
if !ctrlDownTime_ms {
  ctrlDownTime_ms := A_TickCount
  otherModifiersPressed := GetKeyState("Shift", "P") 
      || GetKeyState("Alt", "P")
      || GetKeyState("LWin", "P")
      || GetKeyState("RWin", "P")
}
return

$~ctrl up::
ctrlUpTime_ms := A_TickCount
ctrlHeldDur_ms := ctrlUpTime_ms - ctrlDownTime_ms 
if instr(A_PriorKey, "control")
    && !otherModifiersPressed
    && ctrlHeldDur_ms < 1000 {
  send {esc}
} else {
  send {ctrl}
}
ctrlDownTime_ms := 0
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
