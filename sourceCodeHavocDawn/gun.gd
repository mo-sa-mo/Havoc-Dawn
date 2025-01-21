extends Area2D

@onready var gunsh = $gunsh

func _physics_process(_delta):
	var enemies_in_range = get_overlapping_bodies()
	if enemies_in_range.size() > 0:
		var targer_enemy = enemies_in_range.front()
		look_at(targer_enemy.global_position)
	

func shoot():
	const BULLET = preload("res://bullet.tscn")
	var new_bullet = BULLET.instantiate()
	new_bullet.global_position = %shotingPoint.global_position
	new_bullet.global_rotation = %shotingPoint.global_rotation
	%shotingPoint.add_child(new_bullet)
	gunsh.play()

func _on_timer_timeout():
	shoot()
