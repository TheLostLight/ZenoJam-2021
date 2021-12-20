extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var speed = 150
var moving = true
# Called when the node enters the scene tree for the first time.
func _ready():
	monitoring = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if moving:
		position += Vector2.LEFT * speed * delta


func _on_Sled_area_entered(area):
	moving = false
