extends Node

var current_scene
var selected_level

var level_list = [
	"res://Level1.tscn",
	"res://Level Scenes/Level2.tscn",
	"res://MainMenu.tscn"
]
var level_count = level_list.size()


# Called when the node enters the scene tree for the first time.
func _ready():
	var root = get_tree().get_root()
	current_scene = root.get_child(root.get_child_count() - 1)
	selected_level = "res://Level1.tscn"


func goToScene(path, is_level):
	if is_level:
		selected_level = path
		if path != "res://MainMenu.tscn":
			Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	else:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	
	call_deferred("deferredGoToScene", path)
	
func deferredGoToScene(path):
	current_scene.free()
	
	current_scene = ResourceLoader.load(path).instance()
	
	get_tree().get_root().add_child(current_scene)
	get_tree().set_current_scene(current_scene)

func reloadLevel():
	goToScene(selected_level, true)
	
func goToNextLevel():
	goToScene(level_list[(level_list.find(selected_level) + 1)%level_count], true)
