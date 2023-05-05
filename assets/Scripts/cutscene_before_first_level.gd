extends Node2D

var simultaneous_scene = preload("res://scenes/3d/first_level/first_level.tscn").instantiate()
var timer

func _ready():
	timer = get_node("Timer")
#   get_tree().get_root().add_child(simultaneous_scene)
#   get_node("/root/MainMenu").free()

func _process(delta):
	if(timer.time_left == 0):
		get_tree().change_scene_to_file("res://scenes/3d/first_level/first_level.tscn")
