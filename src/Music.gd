extends AudioStreamPlayer


onready var smooth = $Tween

# Called when the node enters the scene tree for the first time.
func _ready():
	set_volume_db(-80.0)
	
	smooth.interpolate_property(self, "volume_db", -80.0, -20.0, 1, Tween.TRANS_LINEAR, Tween.EASE_IN, 0)
	smooth.start()
	play()
