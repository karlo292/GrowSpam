#Requires AutoHotkey v2.0


Main(){
	MainGui := Gui()
	MainGui.SetFont("s10")
	MainGui.Add("Text","x16 y13 w227 h23 +0x200", "Enter the message you want to spam:")
	TextEdit := MainGui.Add("Edit", "x16 y41 w294 h90 ")

	global text := ""

	MyBtn := MainGui.Add("Button", "x13 y141 w89 h30", "Save Text")
	MyBtn.OnEvent("Click", (*) => text := TextEdit.Value) ; Error here
	;CheckBoxEdit := MainGui.Add("CheckBox", "x110 y140 w73 h33 CheckBox", "Auto Enter")
	MainGui.Show("W352 H180")
}

Main()

^y::
{
	;if (CheckBoxEdit.Value := 1)
	;{
	;	Send "{Enter}"
	;}
	
	Send text
}

