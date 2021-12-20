extends MarginContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Play_pressed():
	SceneManager.goToScene("res://Cutscenes/Cutscene.tscn", false)


func _on_Level_Select_pressed():
	SceneManager.goToScene("res://Level_Select.tscn", false)


func _on_Quit_pressed():
	get_tree().quit()
