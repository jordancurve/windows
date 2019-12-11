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
::\alpha::{U+03B1} ; α
::\Alpha::{U+0391} ; Α
::\beta::{U+03B2} ; β
::\Beta::{U+0392} ; Β
::\rho::{U+03C1} ; ρ
::\-::{U+2014} ; — (em dash)
::\cdot::{U+00B7} ; ·
::\mu::{U+03BC}  ; μ
::\sigma::{U+03C3} σ
::\Sigma::{U+03A3} ; Σ
::\ge::{U+2265} ; ≥
::\le::{U+2264} ; ≤
::\theta::{U+03B8} ; θ
::\phi::{U+03C6} ; φ
::\pi::{U+03C0} ; π
::\Pi::{U+03A0} ; Π
::\pm::{U+00B1} ; ±
::\gamma::{U+03B3} ; γ
::\s::{U+00A7} ; §
::\rarr::{U+2192} ; →
::\inf::{U+221E} ; ∞
::\lor::{U+2228} ; ∨
::\land::{U+2227} ; ∧
::\lfloor::{U+230A} ; ⌊
::\rfloor::{U+230B} ; ⌋
::\lceil::{U+2308} ; ⌈
::\rceil::{U+2309} ; ⌉
::\Delta::{U+0394} ; Δ
::\delta:: {U+03B4} ;  δ
::\Chi::{U+03A7} ; Χ
::\chi::{U+03C7} ; χ
::\subseteq::{U+2286} ; ⊆
::\psubset::{U+2282} ; ⊂
::\ne::{U+2260} ; ≠
::\ex::{U+2203} ; ∃
::\all::{U+2200} ; ∀
::\in::{U+03F5} ; ϵ
::\box::{U+220E} ; ∎
::\N::{U+2115} ; ℕ
::\Z::{U+2124} ; ℤ
::\Q::{U+211A} ; ℚ
::\R::{U+211D} ; ℝ
::\emptyset::{U+2205} ; ∅
::\deg::{U+00B0} ; °
::\top::{U+22A4} ; ⊤
::\bot::{U+22A5} ; ⊥
::\rhat::r̂

;SC07b:: ; how to map the HHKB "diamond" key 
