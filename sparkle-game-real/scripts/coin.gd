extends Area2D

@export var score_value: int = 1 # Set how much this object is worth in the Inspector

func _on_body_entered(body):
	# Ensure the body entering is the player (optional check)
	if body.is_in_group("Player"):
		# Call the add_score function in the GlobalScore autoload
		global.add_score(score_value)
		self.queue_free() # Remove the collectible item
