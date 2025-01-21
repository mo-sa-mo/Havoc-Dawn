extends Node2D

@onready var pausemenu = $player/Pausemenu
var paused = false


func spawn_mob():
	var new_mob = preload("res://mob.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	new_mob.global_position = %PathFollow2D.global_position
	add_child(new_mob)


func _on_timer_timeout():
	spawn_mob()


func _on_player_health_depleted():
	%GameOver.visible = true
	get_tree().paused = true


func _process(delta):
	if Input.is_action_just_pressed("Pause"):
		Pausemenu()
		
func Pausemenu():
	if paused:
		pausemenu.hide()
		Engine.time_scale = 1
	else: 
		pausemenu.show()
		Engine.time_scale = 0
	
	paused = !paused
