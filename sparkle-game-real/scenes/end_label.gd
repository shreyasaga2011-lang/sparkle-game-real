extends Label

func _process(_delta: float) -> void:
	# Access the autoloaded GlobalScore and display its variable
	self.text = "Money: " + str(global.total_score)
