extends MarginContainer

@onready var sprite = $Sprite2D
@onready var dark_sprite = $Sprite2D/TextureRect

var energy_remaining := 10:
	set(value):
		energy_remaining = clamp(value, 0, 10)
		sprite.frame = energy_remaining
var jump_strength := 1:
	set(value):
		jump_strength = clamp(value, 1, 5)
		dark_sprite.size.x = 4 + 32 * jump_strength
var lastFlash := 0.0
var lastFlashSpeed := 0.5

var lastEnergyRegen := 0.0
var lastEnergyRegenSpeed := 1


func _process(delta: float) -> void:
	lastFlash += delta
	if lastFlash >= lastFlashSpeed:
		dark_sprite.visible = !dark_sprite.visible
		lastFlash = 0
		
	lastEnergyRegen += delta
	if lastEnergyRegen >= lastEnergyRegenSpeed:
		energy_remaining += 1
		lastEnergyRegen = 0
		
	if Input.is_action_just_pressed("up"):
		jump_strength += 1
	if Input.is_action_just_pressed("down"):
		jump_strength -= 1
