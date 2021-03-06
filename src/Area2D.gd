extends Area2D

enum {cart_move, cart_fall, cart_stopped}
var state = cart_stopped
var speed = 565
var box_x
var box_width
var box_y
var box_height

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if state == cart_move:
		position += Vector2.RIGHT * speed * delta
		var box   = get_node("CollisionShape2D")
		box_x = box.global_position.x - box.shape.extents.x
		box_width = box.global_position.x + box.shape.extents.x
		box_y = box.global_position.y - box.shape.extents.y
		box_height = box.global_position.y + box.shape.extents.y
	
func _input(event):
	if event is InputEventMouseButton and state == cart_move:
		if event.position.x >= box_x and event.position.x <= box_width:
			if event.position.y >= box_y and event.position.y <= box_height: 
				state = cart_fall


func _on_CartTrigger_area_entered(_area):
	state = cart_move
