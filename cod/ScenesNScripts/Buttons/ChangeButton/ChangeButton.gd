extends Button

export(String) var next_scene

func _on_ChangeButton_pressed():
#	print("hi")
	get_tree().change_scene_to(load(next_scene))
