extends Area2D

enum {bear_walk, bear_idle}

var state

var posLoc

onready var anim = $AnimatedSprite
onready var mouse = get_node("../CustomPointer")
onready var mover = $Tween
# Called when the node enters the scene tree for the first time.
func _ready():
	state = bear_idle

	monitoring = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	posLoc = get_global_mouse_position()
	
	if state == bear_walk:
		rotation = global_position.angle_to_point(posLoc)
		mover.interpolate_property(self, "position", global_position, posLoc, 2, Tween.TRANS_LINEAR, Tween.EASE_IN, 0 )
		mover.start()


func _on_FishBucket_pickup():
	state = bear_walk
	anim.play("Walk")
