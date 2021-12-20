extends MarginContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_LevelOne_pressed():
	SceneManager.goToScene("res://Level1.tscn", true)


func _on_ReturnButton_pressed():
	SceneManager.goToScene("res://MainMenu.tscn", false)
