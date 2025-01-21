extends Control

@onready var hoverr = $MarginContainer/VBoxContainer/hoverr


func _on_back_pressed():
	get_tree().change_scene_to_file("res://menu/menu.tscn")
	
	
func _on_quit_pressed():
	get_tree().quit()


func _on_back_mouse_entered():
	hoverr.play()
