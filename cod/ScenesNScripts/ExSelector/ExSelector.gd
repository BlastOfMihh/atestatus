extends ScrollContainer


onready var regular_button_tscn=preload("res://ScenesNScripts/Buttons/RegularButton/RegularButton.tscn")
onready var vbox=$VBoxContainer

func _ready():
	var ex_list=Globals.get_ex_list()
	print(ex_list)
	for ex in ex_list:
		print(ex)
		var button=regular_button_tscn.instance()
		button.text=ex
		vbox.add_child(button)
