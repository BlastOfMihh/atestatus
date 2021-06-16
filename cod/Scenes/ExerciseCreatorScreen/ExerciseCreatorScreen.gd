extends Control

onready var name_label=$CenterContainer/VBoxContainer/Name/TextEdit


func _ready():
	print(OK)

func _on_Save_pressed():
	var data={
		"exercise_name" : name_label.text
	}
	var dir=Directory.new()
	if !dir.dir_exists(Globals.EX_DIR):
		dir.make_dir_recursive(Globals.EX_DIR)
		
	var file = File.new()
	var error=file.open(Globals.save_path, File.WRITE)
	if error==0:
		file.store_var(data)
		file.close()
