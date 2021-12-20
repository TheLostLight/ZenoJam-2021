extends AnimatedSprite

func _ready():
	pass


func _process(delta):
	global_position = get_viewport().get_mouse_position()
