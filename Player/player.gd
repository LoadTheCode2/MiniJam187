extends CharacterBody2D
class_name Player
@onready var anim_tree = %AnimationTree

var input_dir: Vector2
var SPEED: float = 150.0
var DECELERATION: float = 600.0

var JUMP: float = -400.0
var gravity: float = 980.0

func _physics_process(delta):
	input_dir = Vector2(Input.get_axis("left", "right"), 0.0)
	anim_tree.set("parameters/All/blend_position", velocity)
	
	if not is_on_floor():
		velocity.y += gravity * delta
	if Input.is_action_pressed("jump"):
		velocity.y = JUMP
	
	move_and_slide()
