extends Control

onready var regular_button_tscn=preload("res://ScenesNScripts/Buttons/RegularButton/RegularButton.tscn")
onready var ex_selector_tscn=preload("res://ScenesNScripts/ExSelector/ExSelector.tscn")
onready var ex_vbox=$CenterContainer/VBoxContainer/ExerciseList/VBoxContainer

func _on_AddExerciseButton_pressed():
	var ex_selector=ex_selector_tscn.instance()
	ex_selector.set_position(get_global_mouse_position())
	ex_selector.connect("selected", self, "add_ex")

	get_tree().root.add_child(ex_selector)

func add_ex(ex_name:String):
	var button=regular_button_tscn.instance()
	button.text=ex_name
	ex_vbox.add_child(button)
	print(ex_name)
