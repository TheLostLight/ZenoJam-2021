extends Timer

var active = true

func _ready():
	autostart = false
	one_shot = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Sled_area_entered(area):
	if active and area == get_node("../Lvl2Path/Lvl2PathFollow/Player"):
		active = false
		start(2)


func _on_Bear_area_entered(area):
	if active and area == get_node("../Lvl2Path/Lvl2PathFollow/Player"):
		active = false
		start(2)
