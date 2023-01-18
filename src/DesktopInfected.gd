extends Control

onready var timer = get_node("Exit")
# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.set_wait_time(5)
	timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.

func _on_Exit_timeout() -> void:
	$TransitionScreen.transition()


func _on_TransitionScreen_transitioned() -> void:
	get_tree().change_scene_to(load("res://Scene/ManagerAngryLvl1.tscn"))
