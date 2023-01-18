extends Control

onready var timer = get_node("Timer")

func _ready():
	timer.set_wait_time(5)
	timer.start()
	

# Called when the node enters the scene tree for the first time.
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_Timer_timeout() -> void:
	get_tree().change_scene_to(load("res://Scene/DesktopLvl1.tscn"))
