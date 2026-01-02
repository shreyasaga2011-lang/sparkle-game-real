extends Area2D
@onready var score_label: Label = %ScoreLabel
@export var score_value: int = 1

func _on_body_entered(body):
	if body.is_in_group("Player"):
		global.add_score(score_value)
		score_label.add_point()
		self.queue_free() 
