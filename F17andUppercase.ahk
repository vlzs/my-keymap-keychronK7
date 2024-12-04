#Requires AutoHotkey v2.0
#SingleInstance Force

global upperCase := false

F17::
{
    global upperCase
    upperCase := true
    return
}

; aキーの処理
a::
{
    global upperCase
    if (upperCase) {
        upperCase := false
        Suspend 1 ; with out this suspend, Send "A" triggers hotkey a and cause an infinite loop.
        Send "A"
        Suspend 0
    } else {
        Suspend 1
        Send "a"
        Suspend 0  ; Reset send level to default
    }
    return
}

; aキーの処理
b::
{
    global upperCase
    if (upperCase) {
        upperCase := false
        Suspend 1 ; with out this suspend, Send "A" triggers hotkey a and cause an infinite loop.
        Send "B"
        Suspend 0
    } else {
        Suspend 1
        Send "b"
        Suspend 0  ; Reset send level to default
    }
    return
}

; aキーの処理
c::
{
    global upperCase
    if (upperCase) {
        upperCase := false
        Suspend 1 ; with out this suspend, Send "A" triggers hotkey a and cause an infinite loop.
        Send "C"
        Suspend 0
    } else {
        Suspend 1
        Send "c"
        Suspend 0  ; Reset send level to default
    }
    return
}
; aキーの処理
d::
{
    global upperCase
    if (upperCase) {
        upperCase := false
        Suspend 1 ; with out this suspend, Send "A" triggers hotkey a and cause an infinite loop.
        Send "D"
        Suspend 0
    } else {
        Suspend 1
        Send "d"
        Suspend 0  ; Reset send level to default
    }
    return
}
; aキーの処理
e::
{
    global upperCase
    if (upperCase) {
        upperCase := false
        Suspend 1 ; with out this suspend, Send "A" triggers hotkey a and cause an infinite loop.
        Send "E"
        Suspend 0
    } else {
        Suspend 1
        Send "e"
        Suspend 0  ; Reset send level to default
    }
    return
}
; aキーの処理
f::
{
    global upperCase
    if (upperCase) {
        upperCase := false
        Suspend 1 ; with out this suspend, Send "A" triggers hotkey a and cause an infinite loop.
        Send "F"
        Suspend 0
    } else {
        Suspend 1
        Send "f"
        Suspend 0  ; Reset send level to default
    }
    return
}
; aキーの処理

g::
{
    global upperCase
    if (upperCase) {
        upperCase := false
        Suspend 1 ; with out this suspend, Send "A" triggers hotkey a and cause an infinite loop.
        Send "G"
        Suspend 0
    } else {
        Suspend 1
        Send "g"
        Suspend 0  ; Reset send level to default
    }
    return
}

h::
{
    global upperCase
    if (upperCase) {
        upperCase := false
        Suspend 1 ; with out this suspend, Send "A" triggers hotkey a and cause an infinite loop.
        Send "H"
        Suspend 0
    } else {
        Suspend 1
        Send "h"
        Suspend 0  ; Reset send level to default
    }
    return
}

i::
{
    global upperCase
    if (upperCase) {
        upperCase := false
        Suspend 1 ; with out this suspend, Send "A" triggers hotkey a and cause an infinite loop.
        Send "I"
        Suspend 0
    } else {
        Suspend 1
        Send "i"
        Suspend 0  ; Reset send level to default
    }
    return
}

j::
{
    global upperCase
    if (upperCase) {
        upperCase := false
        Suspend 1 ; with out this suspend, Send "A" triggers hotkey a and cause an infinite loop.
        Send "J"
        Suspend 0
    } else {
        Suspend 1
        Send "j"
        Suspend 0  ; Reset send level to default
    }
    return
}

k::
{
    global upperCase
    if (upperCase) {
        upperCase := false
        Suspend 1 ; with out this suspend, Send "A" triggers hotkey a and cause an infinite loop.
        Send "K"
        Suspend 0
    } else {
        Suspend 1
        Send "k"
        Suspend 0  ; Reset send level to default
    }
    return
}

l::
{
    global upperCase
    if (upperCase) {
        upperCase := false
        Suspend 1 ; with out this suspend, Send "A" triggers hotkey a and cause an infinite loop.
        Send "L"
        Suspend 0
    } else {
        Suspend 1
        Send "l"
        Suspend 0  ; Reset send level to default
    }
    return
}

m::
{
    global upperCase
    if (upperCase) {
        upperCase := false
        Suspend 1 ; with out this suspend, Send "A" triggers hotkey a and cause an infinite loop.
        Send "M"
        Suspend 0
    } else {
        Suspend 1
        Send "m"
        Suspend 0  ; Reset send level to default
    }
    return
}

n::
{
    global upperCase
    if (upperCase) {
        upperCase := false
        Suspend 1 ; with out this suspend, Send "A" triggers hotkey a and cause an infinite loop.
        Send "N"
        Suspend 0
    } else {
        Suspend 1
        Send "n"
        Suspend 0  ; Reset send level to default
    }
    return
}

o::
{
    global upperCase
    if (upperCase) {
        upperCase := false
        Suspend 1 ; with out this suspend, Send "A" triggers hotkey a and cause an infinite loop.
        Send "O"
        Suspend 0
    } else {
        Suspend 1
        Send "o"
        Suspend 0  ; Reset send level to default
    }
    return
}

p::
{
    global upperCase
    if (upperCase) {
        upperCase := false
        Suspend 1 ; with out this suspend, Send "A" triggers hotkey a and cause an infinite loop.
        Send "P"
        Suspend 0
    } else {
        Suspend 1
        Send "p"
        Suspend 0  ; Reset send level to default
    }
    return
}

q::
{
    global upperCase
    if (upperCase) {
        upperCase := false
        Suspend 1 ; with out this suspend, Send "A" triggers hotkey a and cause an infinite loop.
        Send "Q"
        Suspend 0
    } else {
        Suspend 1
        Send "q"
        Suspend 0  ; Reset send level to default
    }
    return
}

r::
{
    global upperCase
    if (upperCase) {
        upperCase := false
        Suspend 1 ; with out this suspend, Send "A" triggers hotkey a and cause an infinite loop.
        Send "R"
        Suspend 0
    } else {
        Suspend 1
        Send "r"
        Suspend 0  ; Reset send level to default
    }
    return
}

s::
{
    global upperCase
    if (upperCase) {
        upperCase := false
        Suspend 1 ; with out this suspend, Send "A" triggers hotkey a and cause an infinite loop.
        Send "S"
        Suspend 0
    } else {
        Suspend 1
        Send "s"
        Suspend 0  ; Reset send level to default
    }
    return
}

t::
{
    global upperCase
    if (upperCase) {
        upperCase := false
        Suspend 1 ; with out this suspend, Send "A" triggers hotkey a and cause an infinite loop.
        Send "T"
        Suspend 0
    } else {
        Suspend 1
        Send "t"
        Suspend 0  ; Reset send level to default
    }
    return
}

u::
{
    global upperCase
    if (upperCase) {
        upperCase := false
        Suspend 1 ; with out this suspend, Send "A" triggers hotkey a and cause an infinite loop.
        Send "U"
        Suspend 0
    } else {
        Suspend 1
        Send "u"
        Suspend 0  ; Reset send level to default
    }
    return
}

v::
{
    global upperCase
    if (upperCase) {
        upperCase := false
        Suspend 1 ; with out this suspend, Send "A" triggers hotkey a and cause an infinite loop.
        Send "V"
        Suspend 0
    } else {
        Suspend 1
        Send "v"
        Suspend 0  ; Reset send level to default
    }
    return
}

w::
{
    global upperCase
    if (upperCase) {
        upperCase := false
        Suspend 1 ; with out this suspend, Send "A" triggers hotkey a and cause an infinite loop.
        Send "W"
        Suspend 0
    } else {
        Suspend 1
        Send "w"
        Suspend 0  ; Reset send level to default
    }
    return
}

x::
{
    global upperCase
    if (upperCase) {
        upperCase := false
        Suspend 1 ; with out this suspend, Send "A" triggers hotkey a and cause an infinite loop.
        Send "X"
        Suspend 0
    } else {
        Suspend 1
        Send "x"
        Suspend 0  ; Reset send level to default
    }
    return
}

y::
{
    global upperCase
    if (upperCase) {
        upperCase := false
        Suspend 1 ; with out this suspend, Send "A" triggers hotkey a and cause an infinite loop.
        Send "Y"
        Suspend 0
    } else {
        Suspend 1
        Send "y"
        Suspend 0  ; Reset send level to default
    }
    return
}

z::
{
    global upperCase
    if (upperCase) {
        upperCase := false
        Suspend 1 ; with out this suspend, Send "A" triggers hotkey a and cause an infinite loop.
        Send "Z"
        Suspend 0
    } else {
        Suspend 1
        Send "z"
        Suspend 0  ; Reset send level to default
    }
    return
}