extends Area2D

enum {UPRIGHT, TOPPLING, TOPPLED, FISHTAKEN}

var box_x
var box_width
var box_y
var box_height

var state = UPRIGHT


onready var bucket_sprite = $BucketSprite

# Called when the node enters the scene tree for the first time.
func _ready():
	var box   = get_node("CollisionShape2D")
	box_x = box.global_position.x - box.shape.extents.x
	box_width = box.global_position.x + box.shape.extents.x
	box_y = box.global_position.y - box.shape.extents.y
	box_height = box.global_position.y + box.shape.extents.y

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _input(event):
	if event is InputEventMouseButton:
		if event.position.x >= box_x and event.position.x <= box_width:
			if event.position.y >= box_y and event.position.y <= box_height: 
				if state == UPRIGHT:
					state = TOPPLING
					bucket_sprite.play("Topple")
				elif state == TOPPLED:
					state = FISHTAKEN
					bucket_sprite.play("Empty")
					get_node("../CustomPointer").play("Fish")
			
					


func _on_BucketSprite_animation_finished():
	if state == TOPPLING:
		state = TOPPLED
