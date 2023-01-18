extends Control

var player = Player.new()
var playerNew
onready var timer = get_node("Timer")
const COUNT_DIR = "user://saves/"
var count_path = COUNT_DIR + "count.res"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"



# Called when the node enters the scene tree for the first time.
func _ready():
	player.score += 1
	
	
	timer.set_wait_time(3)
	timer.start()
	
	load_data(count_path)
	

func load_data(count_path):
	if ResourceLoader.exists(count_path):
		playerNew = ResourceLoader.load(count_path)
		playerNew.score += 1
		print("Quiz1 " + str(playerNew.score))
	assert(ResourceSaver.save(count_path, playerNew) == OK)

func _on_Timer_timeout():
	
	$TransitionScreen.transition()


func _on_TransitionScreen_transitioned() -> void:
	get_tree().change_scene_to(load("res://Scene/QuizSecond.tscn"))
