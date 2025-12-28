extends Label

var points = 0

func _physics_process(delta: float) -> void:
	self.text = "Money: " + str(points)
	
func add_point():
	points += 1
