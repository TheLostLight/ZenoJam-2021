extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_custom_mouse_cursor(load("res://Assets/Sprites/Pointer.gif"))

func _on_DefeatTimer_timeout():
	SceneManager.goToScene("DefeatScreen.tscn", false)


func _on_VictoryTimer_timeout():
	SceneManager.goToScene("VictoryScreen.tscn", false)
