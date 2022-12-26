#Requires AutoHotkey v2.0


MyGui := Gui()
MyGui.Add("Text",, "Enter the message you want to spam:")
MyEdit := MyGui.Add("Edit", "r1 vMyEdit w200")
MyGui.Add("Text",, 'Press "CTRL + Y" to paste text')

global text := "Type something"

Confirm()
{
	return text := MyEdit.Value
}


;MyBtn := MyGui.Add("Button", "Default w80", "SAVE TEXT")
;MyBtn.OnEvent("Click", Confirm())


MyGui.Show


^y::
{
	text := MyEdit.Value 
	Send "{Enter}"
	Send text
}

