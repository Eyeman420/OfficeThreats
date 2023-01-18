extends Control

const SAVE_DIR = "user://saves/"
var save_path = SAVE_DIR + "save.dat"
func _ready():
	pass

func save_data():
	var save_value = {
		"Name" : $VBoxContainer/VBoxContainer/Name/TextEdit.text,
		"Email" :$VBoxContainer/VBoxContainer/Email/TextEdit.text,
		"Employee_Id" : $VBoxContainer/VBoxContainer/EmployeeId/TextEdit.text
	}
	var dir = Directory.new()
	if !dir.dir_exists(SAVE_DIR):
		dir.make_dir_recursive(SAVE_DIR)
		
	var file = File.new()
	file.open(save_path,File.WRITE)
	#file.open("user://saved_data.dat",File.WRITE)
	file.store_line(to_json(save_value))
	file.close()



func _on_Button_pressed() -> void:
	save_data()
	get_tree().change_scene_to(load("res://Scene/OpeningLvl1.tscn"))
