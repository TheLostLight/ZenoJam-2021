extends Area2D

enum {bear_walk, bear_idle}

var state

var posLoc

onready var anim = $AnimatedSprite
onready var mouse = get_node(".../CustomPointer")
onready var mover = $Tween
# Called when the node enters the scene tree for the first time.
func _ready():
	state = bear_idle

	monitoring = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	posLoc = get_viewport().get_mouse_position()
	
	match state:
		bear_idle:
			anim.play("Idle")
		bear_walk:
			anim.play("Walk")
	
	if mouse.get_animation("Fish"):
		state = bear_walk
		mover.interpolate_property(self, position, global_position, posLoc, 2, Tween.TRANS_LINEAR, Tween.EASE_IN, 0 )
		mover.start()
