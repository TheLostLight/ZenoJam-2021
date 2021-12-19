extends Path2D

onready var path = get_node("Lvl1Path")
var pathBlocked = false

var moveSpeed = 300 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if not pathBlocked:
		path.set_offset(path.get_offset() + moveSpeed * delta)
	else:
		pass



func _on_Area2D_area_entered(area):
	pathBlocked = true


func _on_Area2D_area_exited(area):
	pathBlocked = false
