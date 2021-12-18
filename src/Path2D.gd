extends Path2D

onready var path = get_node("Lvl1Path")
var pathBlocked = false

var moveSpeed = 300 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if pathBlocked == false:
		path.set_offset(path.get_offset() + moveSpeed * delta)
	else:
		return



func _on_Area2D_area_entered(area):
	pathBlocked = true


func _on_Area2D_area_exited(area):
	pathBlocked = false
