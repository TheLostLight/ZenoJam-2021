extends Node2D

const LAST_SCENE  = 3

var children_paths = [
	"SceneOne",
	"SceneTwo",
	"SceneThree",
	"SceneFour"
]
var index = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _input(event):
	if event is InputEventMouseButton or event is InputEventKey:
		if event.pressed:
			if index < LAST_SCENE:
				get_node(children_paths[index]).visible = false
				index += 1
				get_node(children_paths[index]).visible = true
			else:
				SceneManager.goToScene("res://Level1.tscn", true)
