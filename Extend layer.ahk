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
; 6::Run "https://scrapbox.io/1685"
; 7::Run "https://scrapbox.io/soundExplore/"
8::(
9::)
; +8::8
; +9::9


; F17::Send "{vk1Dsc07B}" ;   IMEのオンオフ
F17::Run "https://scrapbox.io/ork"

; Capslockキー(F13)を押下しているときのマップ
#HotIf GetKeyState("F13", "P")
;q::Send "!{Tab}" ;ウィンドウの切り替え
e::Send "{Enter}" ;左手でEnterキーを押したいとき
f::Send "{vk1Dsc07B}" ;   IMEのオンオフ
; Winキー(F14)を押下しているときのマップ

#HotIf GetKeyState("F14")

e::Send "#e" ;Win+EでExplorerを開く
v::Send "#v" ;Win+Vでclipboardを開く
c::Send "^#c" ;Win+Ctrl+Cで画面フィルター(モノクロフィルター)をオン・オフする
w::Send "#w" ;Win+mでalways on top
g::Send "^z" ;Undo
t::Send "^+z" ;Redo
; Space::Send "{vk1Dsc07B}" ;   IMEのオンオフ


;   ナビゲーションキー
h::Send "{Home}"
`;::Send "{End}"
u::Send "1"
i::Send "2"
o::Send "3"
j::Send "4"
k::Send "5"
l::Send "6"
m::Send "7"
,::Send "8"
.::Send "9"
n::Send "0"
; K::Send "("
; l::Send ")"
; i::Send "["
; o::Send "]"
; u::`{
; p::}
;   修飾キーを作成
; f::Ctrl
; d::RShift
; a::Alt



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


#HotIf

;::ddd::
;{
;    TimeString := FormatTime("yyyy/MM/dd")
;    SendText TimeString
;    Return
;}
#HotIf WinActive("ahk_exe Studio One.exe")


~3::
{
    Send "{F22}"
    KeyWait "3"
    Send "{F23}"
}
; 4::
; {
;     Send "e"
;     Send "{Space}"
;     KeyWait "4"
;     Send "{Space}"
; }

4::
{
   Send "^i"  ; Control + A (Command: A)
   KeyWait "4"
   Send "^o"  ; Control + B (Command: B)
}

; 3::
; {
;    Send "{F18}"
;    KeyWait "3"
;    Send "{F19}"
; }


; ; 状態を追跡するための変数を初期化
; global toggle := 0

; F13::
; {
;     global toggle
;     if (toggle = 0) {
;         Send "{F13}"
;         toggle := 1
;     } else {
;         Send "{F14}"
;         toggle := 0
;     }
;     KeyWait "F13"
; }

;^1::
;{
;    MouseGetPos &xpos, &ypos, &wnd
;    ProcessName := WinGetProcessName %wnd%
;    MsgBox ProcessName
;}

; Studio Oneの録音時に使うAHKScriptで、フットペダルを踏むと録音が始まる通常の機能に加えて、録音中に踏むと録音開始位置に戻るようにする（録音ボタンの色を取得して判定する）
F18::
{
    if PixelSearch(&Px, &Py, 957, 956, 965, 966, 0xde4f4d, 50)
    {
        Send("8")
    }
    else
    {
        Send("9")
    }
    keyWait("F18", "U")
}



BPMArray := [39, 43, 46, 53, 59, 66, 73, 81, 90, 100, 110, 120, 130, 140, 150, 160, 170, 180, 190, 200, 210, 220, 230, 240]
BPMNumber := 9

SetTitleMatchMode 1
#HotIf WinActive("Studio One - test ギター練習" || "Studio One - copy ギター練習")


; ショートカットキーはお好きなキーに変更してください


; BPMを+10%にします
Delete::
{
    global BPMNumber
    ; Macros: Recall Marker 2 and tempo Insertを呼び出します
    Send "0"
    ; 5ms待ちます
    Sleep 5
    ; トランスポートバーのテンポ欄をクリックして入力状態にします
    ; クリックする座標は各自で変えてください。下の値は私のディスプレイでの値です。画面の大きさによって変わります。
    ; 座標を確認するには、Window Spy(Autohotkey Dashの機能の一つ）を使います
    Click 1450, 950
    BPMNumber += 1
    ; ScriptがStudio oneのテンポ欄にテンポを入力
    Send BPMArray[BPMNumber]
    Send "{Enter}"
}

; BPMを-10%にします。説明は省略します。上と同じです。
BackSpace::
{
    global BPMNumber
    Send "0"
    Sleep 5
    Click 1450, 950
    BPMNumber -= 1
    Send BPMArray[BPMNumber]
    Send "{Enter}"
}

;メトロノームのリズムパターンを変更するAHKScript
SetTitleMatchMode 1
9::
{
    If WinExist("Metronome Setup")
    {
        ControlClick "x140 y100", "Metronome Setup"
        MouseMove 140, 122
        Send "{Ctrl down}{Click}{Ctrl up}"
        WinClose "Metronome Setup"
    } else {
        ControlClick "x1295 y952", "Studio One"
        Sleep 10
        ControlClick "x140 y100", "Metronome Setup"
        MouseMove 140, 122
        Send "{Ctrl down}{Click}{Ctrl up}"
        Sleep 500
        WinClose "Metronome Setup"
    }
}
-::
{
    If WinExist("Metronome Setup")
    {
        ControlClick "x140 y122", "Metronome Setup"
        MouseMove 140, 100
        Send "{Ctrl down}{Click}{Ctrl up}"
        WinClose "Metronome Setup"
    }else {
        ControlClick "x1295 y952", "Studio One"
        Sleep 10
        ControlClick "x140 y122", "Metronome Setup"
        MouseMove 140, 100
        Send "{Ctrl down}{Click}{Ctrl up}"
        Sleep 500
        WinClose "Metronome Setup"
    }
}

