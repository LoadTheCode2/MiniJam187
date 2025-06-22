extends ParallaxBackground

@export var color: Color

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$ParallaxLayer/ColorRect.color = color
