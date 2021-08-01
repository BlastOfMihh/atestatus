extends Button

signal pressed_name(name)

func _ready():
	connect("pressed",self, "emit_pressed_name")

func emit_pressed_name():
	emit_signal("pressed_name", text)
