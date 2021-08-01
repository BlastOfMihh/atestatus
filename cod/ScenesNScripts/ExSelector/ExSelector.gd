extends ScrollContainer

onready var regular_button_tscn=preload("res://ScenesNScripts/Buttons/RegularButton/RegularButton.tscn")
onready var vbox=$VBoxContainer

signal selected(name)

func _ready():
	var ex_list=Globals.get_ex_list()
	# print(ex_list)
	for ex in ex_list:
		# print(ex)
		var button=regular_button_tscn.instance()
		button.text=ex
		button.connect("pressed_name", self, "select")
		vbox.add_child(button)

func select(name):
	emit_signal("selected",name)
	queue_free()
