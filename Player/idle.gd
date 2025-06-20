extends PlayerState

func process_state(delta):
	if player.input_dir != Vector2.ZERO:
		Transition.emit("Run")
func physics_process_state(delta):
	player.velocity = player.velocity.move_toward(Vector2.ZERO, player.DECELERATION * delta)
	anim_tree.set("parameters/R+I/blend_position", player.input_dir)
