extends Area2D

var travelled_distance = 0


func _physics_process(_delta):
	const RANGE = 1200
	var direction = Vector2.RIGHT.rotated(rotation)
	position += direction * 1000 * _delta
	
	travelled_distance += 1000 * _delta
	if travelled_distance > RANGE:
		queue_free()


func _on_body_entered(body):
	queue_free()
	if body.has_method("take_damage"):
		body.take_damage()
	
