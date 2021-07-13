extends Control

onready var name_label=$CenterContainer/VBoxContainer/Name/TextEdit


func _ready():
	print(OK)


func _on_Save_pressed():
	var data={
		"name" : name_label.text,
		"duration" : ($CenterContainer/VBoxContainer/Name2/TextEdit).text,
		"reps" : ($CenterContainer/VBoxContainer/Name3/TextEdit).text
	}
	var file=File.new()
	file.open(Globals.EX_DIR+"/"+data.name, File.WRITE)
	file.store_var(data)
	file.close()

	# var dir=Directory.new()
	# if dir.open(Globals.EX_DIR)==0:
	# 	dir.list_dir_begin(1)
	# 	var file_name=dir.get_next()
	# 	while file_name!="":
	# 		# if ![".", ".."].has(file_name):
	# 		print("file found:" + file_name)
	# 		file_name=dir.get_next()
	# if 0:
	# 	print("esle")
	# 	dir.make_dir_recursive(Globals.EX_DIR)
	# 	var file=File.new()
	# 	file.open(Globals.EX_DIR+"/gelu.dat", File.WRITE)
	# 	file.store_var(data)
	# 	file.close()

	# dir.close()
	# var dir=Directory.new()
	# if !dir.dir_exists(Globals.EX_DIR):
	# 	dir.make_dir_recursive(Globals.EX_DIR)


	# var file = File.new()
	# var error=file.open(Globals.save_path, File.READ)
	# if error==0:
	# 	var data_array=file.get_var()

		# file.store_var(data)
		# file.close()
