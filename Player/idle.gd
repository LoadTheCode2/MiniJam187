extends PlayerState

func process_state(delta):
	if player.input_dir != 0.0:
		Transition.emit(self, "run")

func physics_process_state(delta):
	player.velocity = player.velocity.move_toward(Vector2.ZERO, player.DECELERATION * delta)
