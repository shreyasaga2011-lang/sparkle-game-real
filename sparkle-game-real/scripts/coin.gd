extends Area2D
var score = 0
@onready var score_label: Label = %ScoreLabel

func _on_body_entered(body):
	score_label.add_point()
	Global.add_point()
	self.queue_free()
	
