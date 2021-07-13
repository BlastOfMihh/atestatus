extends Control

onready var name_label=$VBoxContainer/NameLabel

export var exercise_name:="Flotari"
export var reps:=10
export var lenght:=0.0

signal finished()

func _ready():
	pass
