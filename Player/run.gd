extends PlayerState

func process_state(delta):
	if player.input_dir == Vector2.ZERO:
		Transition.emit("Idle")
func physics_process_state(delta):
	player.velocity = player.velocity.move_toward(player.SPEED * player.input_dir, player.ACCELERATION * delta)
