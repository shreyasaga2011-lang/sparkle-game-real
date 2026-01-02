extends Node
@onready var killzone: Area2D = $Killzone

var total_score: int = 0

func add_score(amount: int):
	total_score += amount
	print("Current Score: ", total_score)
	
	
