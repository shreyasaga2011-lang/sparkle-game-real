extends Label
func _physics_process(delta: float) -> void:
	Label.text = "Money: " + str(Global.score)
