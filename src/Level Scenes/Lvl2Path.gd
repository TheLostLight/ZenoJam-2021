extends Path2D

onready var path = get_node("Lvl2PathFollow")
onready var player = $Lvl2PathFollow/Player
var pathBlocked = false

var moveSpeed = 300 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if not pathBlocked:
		path.set_offset(path.get_offset() + moveSpeed * delta)
	else:
		pass




func _on_Player_area_entered(area):
	pathBlocked = true
