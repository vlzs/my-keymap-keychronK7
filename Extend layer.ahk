#Requires AutoHotkey v2.0
#SingleInstance Force

1::`{
2::[
3::]
4::}
^{::Send "^1"
^[::Send "^2"
^]::Send "^3"
^}::Send "^4"
8::(
9::)
+8::8
+9::9

; Capslockキー(F13)を押下しているときのマップ
#HotIf GetKeyState("F13", "P")
q::Send "!{Tab}" ;ウィンドウの切り替え

; Winキー(F14)を押下しているときのマップ
#HotIf GetKeyState("F14")

e::Send "#e" ;Win+EでExplorerを開く
v::Send "#v" ;Win+Vでclipboardを開く
c::Send "^#c" ;Win+Ctrl+Cで画面フィルター(モノクロフィルター)をオン・オフする
w::Send "#w" ;Win+mでalways on top
g::Send "^z" ;Undo
t::Send "^+z" ;Redo
Space::Send "{vk1Dsc07B}" ;   IMEのオンオフ


;   ナビゲーションキー
i::Send "{Left}"
k::Send "{Right}"
o::Send "{Up}"
l::Send "{Down}"
h::Send "{Home}"
j::Send "{End}"
n::Send "{Backspace}"
m::Send "{Delete}"

;   修飾キーを作成
f::Ctrl
d::RShift
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
+h::Send "+{Home}"
+j::Send "+{End}"
+n::Send "+{Backspace}"
+m::Send "+{Delete}"

;   Ctrl+Shift+*
^+i::Send "^+{Left}"
^+k::Send "^+{Right}"
^+o::Send "^+{Up}"
^+l::Send "^+{Down}"
^+m::Send "^+{Delete}"

;   Alt+*
!i::Send "!{Left}"
!k::Send "!{Right}"
!o::Send "!{Up}"
!l::Send "!{Down}"

; 右Altキー(F15)を押しているときのマップ
#HotIf GetKeyState("F15", "P")
q::Send "%"
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


; 左矢印キー(F16)を押しているときのマップ
#HotIf GetKeyState("F16", "P")
w::1
e::2
r::3
s::4
d::5
f::6
x::7
c::8
v::9
a::0
g::Send "{PgDn}"
z::Send "{PgUp}"


;   修飾キーを作成
j::Ctrl
;k::RShift
;l::Alt

^w::^1
^e::^2
^r::^3
^s::^4
^d::^5
^f::^6
^x::^7
^c::^8
^v::^9
^a::^0

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
