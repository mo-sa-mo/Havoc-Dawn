extends CharacterBody2D

signal health_depleted

var health = 150.0



func _physics_process(_delta):
	var direction = Input.get_vector ( "move_left" ,"move_right" ,"move_up" ,"move_down")
	velocity = direction * 600
	move_and_slide() 
	
	
	if velocity.length() > 0.0:
		get_node("HappyBoo").play_walk_animation()
	else:
		get_node("HappyBoo").play_idle_animation()
		
	const DAMAGE_RATE = 50.0
	var overlapping_mobs = %HurtBox.get_overlapping_bodies()
	if overlapping_mobs.size() > 0:
			health -= DAMAGE_RATE * overlapping_mobs.size() * _delta
			%ProgressBar.value = health
			if health <= 0.0:
				#health_depleted.emit()
				get_tree().change_scene_to_file("res://menu/lose.tscn")
				
				if Global.score > Global.highscore:
					Global.save_data()
					
