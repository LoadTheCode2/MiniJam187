extends Node2D

@onready var player = $Player

func _physics_process(delta):
	player.velocity.x -= 800 * delta
