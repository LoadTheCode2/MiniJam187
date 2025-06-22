extends Button

@export_file var level_path 

func on_pressed():
	get_tree().change_scene_to_file(level_path)
