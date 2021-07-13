extends Control

var ex_screen_tscn=preload("res://Scenes/ExerciseScreen/ExerciseScreen.tscn")

func _on_Button_pressed():
	var file=File.new()
	if file.file_exists(Globals.save_path):
		var error=file.open(Globals.save_path, File.READ)
		if error==0:
			var data=file.get_var()
			file.close()
			print(data.exercise_name)
		
