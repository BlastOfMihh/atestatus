extends CenterContainer


#onready var preload screen=preload()
export(Array) var list_of_exs

func _ready():
	var example={}
	example.name="Floatari"
	example.reps=20
	example.type="ex" 
#	example.type="timer" 
	list_of_exs.append(example)
	for ex in list_of_exs:
		ex_prompt=cv.instance
		ex_prompt.connect("finished", self , elu)
