extends Node

var score = 0
var highscore = 0

func _ready():
	load_data()


func _process(delta):
	pass



func save():
	var dict = {"score": score}
	
	return dict 


var file_path = "user://saved_data.save"

func save_data():
	var save_game = FileAccess.open(file_path,FileAccess.WRITE)
	var json_string = JSON.stringify(save())
	save_game.store_line(json_string)


func load_data():
	if not FileAccess.file_exists(file_path):
		return
	var save_game = FileAccess.open(file_path,FileAccess.READ)
	while save_game.get_position() < save_game.get_length():
		var json_string = save_game.get_line()
		var json  = JSON.new()
		var prase_result = json.parse(json_string)
		var node_data = json.get_data()

		highscore = node_data["score"]
		
