extends Area2D

@onready var timer = $Timer

func on_body_entered(body):
	timer.start()
	 # Replace with function body.
	
func on_timer_timeout():
	get_tree().reload_current_scene() # Replace with function body.
