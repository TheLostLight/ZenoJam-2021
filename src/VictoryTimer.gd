extends Timer

var active = true

func _ready():
	autostart = false
	one_shot = true

func _on_VictoryTrigger_area_entered(area):
	if active:
		active = false
		start(2)
