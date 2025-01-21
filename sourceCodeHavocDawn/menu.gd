extends Button

@onready var hover = $"../hover"

func _on_pressed():
	get_tree().change_scene_to_file("res://last_stand_game.tscn")

func _on_options_pressed():
	get_tree().change_scene_to_file("res://options.tscn")

func _on_quit_pressed():
	get_tree().quit()


func _on_mouse_entered():
	hover.play()





func _on_quit_mouse_entered():
	hover.play()








func _on_options_mouse_entered():
	hover.play()
