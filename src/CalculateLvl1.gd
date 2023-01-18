extends Control


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
var saved_value 
const CALC_DIR = "user://saves/"
var calc_path = CALC_DIR + "Calc.dat"
#const FILE_NAME = "user://gameCalculate.json"
# Called when the node enters the scene tree for the first time.
func save_data():
	saved_value = {
		"Total" : $total.text
	}
	var file = File.new()
	file.open(calc_path, File.WRITE)
	file.store_line(to_json(saved_value))
	file.close()
	
	
func _ready() -> void:
	pass # Replace with function body.


func load_save():
	var file = File.new()
	var data
	if file.file_exists(calc_path):
		file.open(calc_path, File.READ)
		data = parse_json(file.get_as_text())
		file.close()
		if typeof(data) == TYPE_DICTIONARY:
			data = saved_value
		else:
			printerr("Corrupted data!")
	else:
		printerr("No saved data!")
	return data

func checkSum(sum):
	
	var total_dict = {"Total":"870"}
	print(total_dict)
	print(sum)
	if sum.hash() == total_dict.hash():
		print ("if statement")
		var sceneNew: String = "res://Scene/GmailHomeSus.tscn"
		get_tree().change_scene(sceneNew)
	else:
		print ("else statement")
		#_on_Popup_about_to_show()


func _on_submit_pressed() -> void:
	save_data()
	checkSum(load_save())
	


func _on_LeftArrow_pressed() -> void:
	get_tree().change_scene_to(load("res://Scene/GmailSafe.tscn"))


func _on_RightArrow_pressed() -> void:
	pass # Replace with function body.


func _on_Cross_pressed() -> void:
	get_tree().change_scene_to(load("res://Scene/DesktopLvl1.tscn"))



func _on_ToolButton_pressed() -> void:
	pass # Replace with function body.



