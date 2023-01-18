extends Control

var player = Player.new()
const COUNT_DIR = "user://saves/"
var count_path = COUNT_DIR + "count.res"
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	player.score = 0
	assert(ResourceSaver.save(count_path, player) == OK)
	print("Start " + str(player.score))
	get_tree().change_scene_to(load("res://Scene/QuizFirst.tscn"))
	

