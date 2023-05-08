extends CanvasLayer

signal transitioned_black
signal transitioned_transparent

# Called every frame. 'delta' is the elapsed time since the previous frame.
func transition_black():
	$AnimationPlayer.play("fade_to_black")
	
func transition_transparent():
	$AnimationPlayer.play("fade_to_normal")

func _on_animation_player_animation_finished(anim_name):
	if (anim_name == "fade_to_black"):
		emit_signal("transitioned_black")
	elif (anim_name == "fade_to_normal"):
		emit_signal("transitioned_transparent")

func change_to_transparent():
	$ColorRect.color = Color(0,0,0,0)
