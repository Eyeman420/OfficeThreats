extends Control


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
var saved_value 
const SAVE_DIR = "user://saves/"
var save_path = SAVE_DIR + "save.dat"

# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	var file = File.new()
	var data
	var name_emp
	var id_emp
	
	file.open(save_path, File.READ)
	data = str2var(file.get_as_text())
	file.close()
	
	name_emp = data.Name
	id_emp =  data.Employee_Id
	$VBoxContainer/NameEmp.text = (name_emp)
	$VBoxContainer/Emp_id.text = (id_emp)



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_Download_pressed() -> void:
	get_tree().change_scene_to(load("res://Scene/CertificatePrint.tscn"))
