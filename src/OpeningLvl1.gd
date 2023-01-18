extends Control

onready var timer = get_node("Timer")
# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.set_wait_time(3)
	timer.start()

func _on_Timer_timeout() -> void:
	
	$TransitionScreen.transition()


func _on_TransitionScreen_transitioned() -> void:
	get_tree().change_scene_to(load("res://Scene/ManagerInstructionLvl1.tscn"))
