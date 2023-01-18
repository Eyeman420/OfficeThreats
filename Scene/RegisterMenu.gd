extends Control

func _ready():
	pass

func save_data():
	var save_value = {
		"Name" : $VBoxContainer/VBoxContainer/Name/TextEdit.text,
		"Email" :$VBoxContainer/VBoxContainer/Email/TextEdit.text,
		"Employee_Id" : $VBoxContainer/VBoxContainer/Email/TextEdit.text
	}
	var file = File.new()
	file.open("user://saved_data.dat",File.WRITE)
	file.store_line(to_json(save_value))


func _on_TextureButton_pressed():
	save_data()
