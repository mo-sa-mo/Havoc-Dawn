extends Control




func _physics_process(delta):
	$score.text = "Score: " + str(Global.score)


