extends Control


var counter = 31
onready var timer = get_node("Timer")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.set_wait_time(1)
	timer.start()


func _on_Timer_timeout() -> void:
	checkTimer()
	$Display.text = str(counter)

func checkTimer() -> void:
	if (counter == 1):
		get_tree().change_scene_to(load("res://Scene/WrongFirst.tscn"))
	counter -=1

func _on_Button_pressed():
	get_tree().change_scene_to(load("res://Scene/Correct1.tscn"))


func _on_Button2_pressed():
	get_tree().change_scene_to(load("res://Scene/WrongFirst.tscn"))


func _on_Button3_pressed():
	get_tree().change_scene_to(load("res://Scene/WrongFirst.tscn"))


func _on_Button4_pressed():
	get_tree().change_scene_to(load("res://Scene/WrongFirst.tscn"))
