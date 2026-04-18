#Requires AutoHotkey v2.0
#SingleInstance Force

chromeWindowFilter := "ahk_exe chrome.exe"
toggleOffsetX := 40
toggleOffsetY := 30

#HotIf WinActive(chromeWindowFilter)
^!z::HandleChromeVerticalTabLabelsToggle()
#HotIf

HandleChromeVerticalTabLabelsToggle() {
    try {
        ClickChromeVerticalTabToggle()
    } catch as err {
        TrayTip("chrome-vtab-toggle", err.Message, "Mute Icon!")
    }
}

ClickChromeVerticalTabToggle() {
    hwnd := WinGetID("A")
    if !hwnd {
        throw Error("Could not get the Chrome window handle.")
    }

    if (WinGetProcessName("ahk_id " hwnd) != "chrome.exe") {
        throw Error("This hotkey only works when Google Chrome is active.")
    }

    WinGetPos(&winX, &winY, , , "ahk_id " hwnd)

    CoordMode("Mouse", "Screen")
    mouseX := 0
    mouseY := 0
    MouseGetPos(&mouseX, &mouseY)
    clickX := winX + toggleOffsetX
    clickY := winY + toggleOffsetY
    Click(clickX, clickY)
    MouseMove(mouseX, mouseY, 0)
}
