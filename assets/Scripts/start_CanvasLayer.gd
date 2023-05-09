extends CanvasLayer

var fade_scene

func _ready():
	fade_scene = get_node("../FadeScene")
	fade_scene.change_to_transparent

func _on_button_start_pressed():
	fade_scene.visible = true
	fade_scene.transition_black()
	#get_tree().get_root().add_child(simultaneous_scene)
	#get_node("/root/MainMenu").free()

func _on_fade_scene_transitioned_black():
	get_tree().change_scene_to_file("res://scenes/cutscene_before_first_level/cutscene_before_first_level.tscn")

func _on_button_exit_pressed():
	get_tree().quit()


