extends Node2D

var simultaneous_scene = preload("res://scenes/3d/first_level/first_level.tscn").instantiate()
var timer
var fade_scene

func _ready():
	fade_scene = get_node("FadeScene")
	fade_scene.visible = true
	fade_scene.transition_transparent()
	print ("zap")
	timer = get_node("Timer")
#   get_tree().get_root().add_child(simultaneous_scene)
#   get_node("/root/MainMenu").free()

func _process(delta):
	if(timer.time_left == 0):
		fade_scene.transition_black()



func _on_fade_scene_transitioned_black():
	get_tree().change_scene_to_file("res://scenes/3d/first_level/first_level.tscn")
