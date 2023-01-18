extends Control


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_LeftArrow_pressed() -> void:
	get_tree().change_scene_to(load("res://Scene/GmailHome.tscn"))


func _on_RightArrow_pressed() -> void:
	pass # Replace with function body.


func _on_Cross_pressed() -> void:
	get_tree().change_scene_to(load("res://Scene/DesktopLvl1.tscn"))




func _on_LinkSafe_pressed() -> void:
	get_tree().change_scene_to(load("res://Scene/CalculateLvl1.tscn"))



func _on_Delete_pressed() -> void:
	get_tree().change_scene_to(load("res://Scene/ManagerConsult.tscn"))
