extends Area2D

@onready var timer = $Timer
@onready var sprite = $Sprite2D

func on_body_entered(body):
	sprite.visible = false
	Engine.time_scale = 0.5 # Replace with function body.
	timer.start()


func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().change_scene_to_file("res://main_screen.tscn") # Replace with function body.
