extends CanvasLayer

var simultaneous_scene = preload("res://scenes/3d/first_level.tscn").instantiate()

func _on_button_start_pressed():
	get_tree().get_root().add_child(simultaneous_scene)
	get_node("/root/MainMenu").free()


func _on_button_exit_pressed():
	get_tree().quit()
