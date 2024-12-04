#Requires AutoHotkey v2.0
#SingleInstance Force



<+8::Send "("
<+9::Send ")"
<+i::Send "["
<+o::Send "]"
<+k::Send "{{}"
<+l::Send "{}}"

; Capslockキー(F13)を押下しているときのマップ
#HotIf GetKeyState("F13", "P")
q::Send "!{Tab}" ;ウィンドウの切り替え

; Winキー(F14)を押下しているときのマップ
#HotIf GetKeyState("F14")

e::Send "#e" ;Win+EでExplorerを開く
v::Send "#v" ;Win+Vでclipboardを開く
c::Send "^#c" ;Wind+Ctrl+Cで画面フィルター(モノクロフィルター)をオン・オフする
g::Send "^z" ;Undo
t::Send "^+z" ;Redo
Space::Send "{vk1Dsc07B}" ;   IMEのオンオフ


;   ナビゲーションキー
i::Send "{Left}"
k::Send "{Right}"
l::Send "{Down}"
o::Send "{Up}"
h::Send "{Home}"
j::Send "{End}"
n::Send "{Backspace}"
m::Send "{Delete}"

;   修飾キーを作成
f::Ctrl
d::Shift
a::Alt

;   Ctrl+*
^i::Send "^{Left}"
^k::Send "^{Right}"
^o::Send "^{Up}"
^l::Send "^{Down}"
^n::Send "^{Backspace}"
^m::Send "^{Delete}"

;   Shift+*
+i::Send "+{Left}"
+k::Send "+{Right}"
+o::Send "+{Up}"
+l::Send "+{Down}"
+n::Send "+{Backspace}"
+m::Send "+{Delete}"

;   Ctrl+Shift+*
^+i::Send "^+{Left}"
^+k::Send "^+{Right}"
^+o::Send "^+{Up}"
^+l::Send "^+{Down}"
^+n::Send "^+{Backspace}"
^+m::Send "^+{Delete}"

;   Alt+*
!i::Send "!{Left}"
!k::Send "!{Right}"
!o::Send "!{Up}"
!l::Send "!{Down}"

; 右Altキー(F15)を押しているときのマップ
#HotIf GetKeyState("F15", "P")



; 左矢印キー(F16)を押しているときのマップ
#HotIf GetKeyState("F16", "P")
;q::Send "*"
w::Send "<"
e::Send ">"
r::Send "\"
t::Send "``"
a::Send "{!}"
s::Send "-"
d::Send "{+}"
f::Send "="
g::Send "&"
z::Send "?"
x::Send "/"
c::Send "*"
v::Send "{^}"
b::Send "|"
1::Send "~"
2::Send "@"
3::Send "{#}"
4::Send "$"
5::Send "%"

; 元Nキー(F17)を押しているときのマップ
#HotIf GetKeyState("F17", "P")
1::Send "{F1}"
2::Send "{F2}"
3::Send "{F3}"
4::Send "{F4}"
5::Send "{F5}"
6::Send "{F6}"
7::Send "{F7}"
8::Send "{F8}"
9::Send "{F9}"
0::Send "{F10}"
-::Send "{F11}"
'::Send "{F12}"
