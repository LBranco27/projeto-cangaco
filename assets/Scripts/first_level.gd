extends Node3D

var fade_scene

func _ready():
	fade_scene = get_node("FadeScene")
	fade_scene.visible = true
	fade_scene.transition_transparent()
