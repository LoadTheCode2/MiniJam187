extends MarginContainer

@onready var animated_sprite = $Sprite2D
var jump_strength := 1:
	set(value):
		jump_strength = clamp(value, 1, 5)
		animated_sprite.frame = jump_strength - 1

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("up"):
		jump_strength += 1
	if Input.is_action_just_pressed("down"):
		jump_strength -= 1
		
	
