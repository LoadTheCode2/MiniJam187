extends Node
class_name PlayerState

signal Transition(state: PlayerState, new_state: String)
@onready var player: Player = get_owner()
@onready var anim_tree = $AnimationTree

func enter():
	pass
func exit():
	pass
func _process_state(delta):
	pass
func _physics_process_state(delta):
	pass
