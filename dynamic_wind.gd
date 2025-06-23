extends Node2D

var wind_str: Vector2

@onready var player = $Player
@onready var timer = $WindSwitch
@onready var particles = $GPUParticles2D
@onready var particle_material = particles.process_material as ParticleProcessMaterial

func _ready():
	wind_str.x = randf_range(180, 800)
	wind_str.y = randf_range(200, 950)
	particle_material.gravity.x = wind_str.x/5
	particle_material.gravity.x = wind_str.x/5
	
func _physics_process(delta):
	if not player.is_on_floor():
		player.velocity.y -= wind_str.y * delta
		player.velocity.x += wind_str.x * delta
		
func on_timer_timeout():
	wind_str.x = randf_range(-540, 950)
	wind_str.y = randf_range(-800, 420)
	particle_material.gravity.x = wind_str.x/5
	particle_material.gravity.y = wind_str.y/5
	timer.start()
