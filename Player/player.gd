extends CharacterBody2D
class_name Player

var input_dir
var SPEED: float = 30.0
var ACCELERATION: float = 150.0
var DECELERATION: float = 600.0

func _physics_process(delta):
	input_dir = Vector2(Input.get_axis("ui_left", "ui_right"), 0.0)
	
