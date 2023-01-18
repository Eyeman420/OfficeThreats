extends Control


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
onready var timer = get_node("Timer")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.set_wait_time(3)
	timer.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_Timer_timeout() -> void:
	$TransitionScreen.transition()


func _on_TransitionScreen_transitioned() -> void:
	get_tree().change_scene_to(load("res://Scene/ComingSoonLvl2.tscn"))
