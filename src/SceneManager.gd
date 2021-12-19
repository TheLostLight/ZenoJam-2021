extends Node

var current_scene
var selected_level


# Called when the node enters the scene tree for the first time.
func _ready():
	var root = get_tree().get_root()
	current_scene = root.get_child(root.get_child_count() - 1)
	selected_level = "res://Level1.tscn"


func goToScene(path, is_level):
	if is_level:
		selected_level = path
	
	call_deferred("deferredGoToScene", path)
	
func deferredGoToScene(path):
	current_scene.free()
	
	current_scene = ResourceLoader.load(path).instance()
	
	get_tree().get_root().add_child(current_scene)
	get_tree().set_current_scene(current_scene)

func reloadLevel():
	goToScene(selected_level, false)