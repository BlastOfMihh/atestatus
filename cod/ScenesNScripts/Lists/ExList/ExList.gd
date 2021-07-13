extends Control

onready var regular_button=preload("res://ScenesNScripts/Buttons/RegularButton/RegularButton.tscn")
onready var list= $ItemList/ExerciseList

func add_ex_to_list(var data):
	var button=regular_button.instance()
	button.text=data.name
	list.add_child(button)
#	print(data.name)

func _ready():
	var dir = Directory.new()
	dir.open(Globals.EX_DIR)
	dir.list_dir_begin(true)
	var file_name=dir.get_next()

	while file_name!="":
		var file=File.new()
		file.open(Globals.EX_DIR+"/"+file_name, File.READ)
		var data=file.get_var()
		add_ex_to_list(data)
		# print(data.name, data.reps)
		file_name=dir.get_next()
