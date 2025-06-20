extends Node

@export var initial_state: PlayerState
@onready var current_state: PlayerState = initial_state
var state_name: String

var states: Dictionary = {}

func _ready():
	for child in get_children():
		states[child.name] = child
		child.Transition.connect(on_transition)
		
func _process(delta):
	current_state.process_state(delta)
	
func _physics_process(delta):
	print(current_state)
	current_state.physics_process_state(delta)
	
func on_transition(new_state: String):
	state_name = new_state
	current_state.exit()
	current_state = states[new_state]
	current_state.enter()
