extends Label

@onready var game_ui = $CanvasLayer2/GameUI




func _ready():
	$score.text = str(Global.score)
