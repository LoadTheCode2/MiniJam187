extends PlayerState

func process_state(delta):
	if player.input_dir == 0:
		Transition.emit(self, "idle")
func physics_process_state(delta):
	player.velocity = player.velocity.move_toward(player.SPEED * player.input_dir, player.ACCELERATION * delta)
