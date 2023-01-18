extends Control
var counter = 11
onready var timer = get_node("Timer")

func _ready():
	timer.set_wait_time(1)
	timer.start()


func _on_Timer_timeout() -> void:
	checkTimer()
	$Display.text = str(counter)


func _on_CanvasLayer_transitioned() -> void:
	get_tree().change_scene_to(load("res://Scene/DesktopLvl1.tscn"))

func checkTimer() -> void:
	if (counter == 1):
		$TransitionScreen.transition()
	counter -=1
