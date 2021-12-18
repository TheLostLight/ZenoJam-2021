extends Area2D


var current_frame_pos = global_position
var previous_frame_pos = Vector2(0,0)
var isMoving = false


onready var anim = $AnimatedSprite
# Called when the node enters the scene tree for the first time.
func _ready():
	anim.play("Idle")
	monitoring = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	previous_frame_pos = current_frame_pos
	current_frame_pos = global_position
	
	if current_frame_pos - previous_frame_pos != Vector2(0,0) :
		anim.play("Walk")
	else:
		anim.play("Idle")
