extends Control

@onready var booo_die = $boooDIE
@onready var hoveer = $MarginContainer/VBoxContainer/hoveer

func _ready():
	booo_die.play()
	$score.text = str(Global.score)
	if Global.score < Global.highscore :
		$score2.text = str(Global.highscore)
	else :
		$score2.text = str(Global.score)
		Global.highscore = Global.score
	Global.score = 0


func _on_play_mouse_entered():
	hoveer.play()


func _on_quit_mouse_entered():
	hoveer.play()
