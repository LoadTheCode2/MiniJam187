extends CharacterBody2D
class_name Player

var input_dir: Vector2
var SPEED: float = 150.0
var ACCELERATION: float = 300.0
var DECELERATION: float = 600.0

func _physics_process(delta):
	input_dir = Vector2(Input.get_axis("left", "right"), 0.0)
	move_and_slide()
