extends Node

const EX_DIR="user://exercises"
const WO_DIR="user://workouts"
# var save_path=EX_DIR+"save.dat"


func _ready():
	# print("hi there")
	var dir=Directory.new()
	if !dir.dir_exists(Globals.EX_DIR) :
		dir.make_dir_recursive(Globals.EX_DIR)
	if !dir.dir_exists(Globals.WO_DIR) :
		dir.make_dir_recursive(Globals.WO_DIR)

func get_ex_list():
	var ans=[]
	var dir = Directory.new()
	dir.open(Globals.EX_DIR)
	dir.list_dir_begin(true)
	var file_name=dir.get_next()
	while file_name!="":
		# print(file_name)
		ans.push_back(file_name)
		file_name=dir.get_next()
	return ans
