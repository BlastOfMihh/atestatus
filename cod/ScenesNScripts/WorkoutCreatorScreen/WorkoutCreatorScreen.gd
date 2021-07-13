extends Control

onready var ex_selector_tscn=preload("res://ScenesNScripts/ExSelector/ExSelector.tscn")

func _on_AddExerciseButton_pressed():
	var ex_selector=ex_selector_tscn.instance()
	ex_selector.set_position(get_global_mouse_position())
	get_tree().root.add_child(ex_selector)
