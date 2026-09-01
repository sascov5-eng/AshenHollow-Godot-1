extends Camera2D

@export var smooth_speed: float = 6.0

func _process(delta):
	if get_parent():
		global_position = global_position.lerp(get_parent().global_position, smooth_speed * delta)
