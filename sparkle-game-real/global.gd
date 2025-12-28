extends Node
@onready var end_label: Label = $EndLabel

var globalscore = 0

func add_point():
	globalscore += 1
	
func _physics_process(delta: float) -> void:
	end_label.text = "Money: " + str(globalscore)
