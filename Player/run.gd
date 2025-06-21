extends PlayerState

func process_state(delta):
	if player.input_dir == Vector2.ZERO:
		Transition.emit("Idle")
func physics_process_state(delta):
	player.velocity.x = player.SPEED * player.input_dir.x
