extends Area2D

var speed = 400

# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(not is_processing())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += Vector2.RIGHT * speed * delta


func _on_Button_pressed():
	set_process(not is_processing())
