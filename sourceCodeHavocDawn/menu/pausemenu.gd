extends Control

@onready var hoverr = $MarginContainer/VBoxContainer/hoverr

@onready var game_ui = $"../../CanvasLayer2/GameUI"

@onready var game = $"../.."

func _on_resume_pressed():
	game.Pausemenu()


func _on_quit_pressed():
	get_tree().quit()


func _on_resume_mouse_entered():
	hoverr.play()


func _on_quit_mouse_entered():
	hoverr.play()



