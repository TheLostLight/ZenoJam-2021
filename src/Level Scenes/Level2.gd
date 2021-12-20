extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass




func _on_Defeat_timer_timeout():
	SceneManager.goToScene("DefeatScreen.tscn", false)


func _on_Vic_Time_timeout():
	SceneManager.goToScene("VictoryScreen.tscn", false)
