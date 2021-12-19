extends Area2D

enum {player_walk, player_fall, player_idle, player_stop}

var state


onready var anim = $AnimatedSprite
# Called when the node enters the scene tree for the first time.
func _ready():
	state = player_walk
	anim.play("Idle")
	monitoring = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	match state:
		player_idle:
			anim.play("Idle")
		player_walk:
			anim.play("Walk")
		player_fall:
			anim.play("Fall")
			state = player_stop
		player_stop:
			pass
			



func _on_BagCart_area_entered(area):
	if area == self:
		state = player_fall
