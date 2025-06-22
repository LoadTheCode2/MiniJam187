extends CharacterBody2D
class_name Player
@onready var anim_tree = %AnimationTree
@onready var energy_meter = $GameUI/EnergyMeter

var input_dir: Vector2
var SPEED: float = 150.0
var DECELERATION: float = 600.0

var BASE_JUMP: float = 800.0
var JUMP_MULTIPLIER: float = 200.0
var gravity: float = 1500.0

func _physics_process(delta):
	if Input.is_action_just_pressed("ms"):
		get_tree().change_scene_to_file("res://main_screen.tscn")
	input_dir = Vector2(Input.get_axis("left", "right"), 0.0)
	anim_tree.set("parameters/All/blend_position", velocity)
	
	if not is_on_floor():
		velocity.y += gravity * delta
	if velocity.y >= 0 and Input.is_action_just_pressed("jump") and energy_meter.energy_remaining >= energy_meter.jump_strength:
		velocity.y -= BASE_JUMP + JUMP_MULTIPLIER * energy_meter.jump_strength
		energy_meter.energy_remaining -= energy_meter.jump_strength
		
	if velocity.y != 0.0:
		energy_meter.dark_sprite.visible = false
		energy_meter.lastFlash = 0
		energy_meter.lastEnergyRegen = 0.5
	
	move_and_slide()
