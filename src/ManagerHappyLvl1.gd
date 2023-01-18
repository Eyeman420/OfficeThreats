extends Control

var counter = 11
onready var timer = get_node("Timer")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.set_wait_time(1)
	timer.start()


func _on_Timer_timeout() -> void:
	checkTimer()
	$Display.text = str(counter)


func _on_TransitionScreen_transitioned() -> void:
	get_tree().change_scene_to(load("res://Scene/OpeningLvl2.tscn"))

func checkTimer() -> void:
	if (counter == 1):
		$TransitionScreen.transition()
	counter -=1
