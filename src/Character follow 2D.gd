extends PathFollow2D

export var runSpeed = 60.0
var pathCompletion = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pathCompletion += runSpeed * delta
	offset = pathCompletion
	print(pathCompletion)
