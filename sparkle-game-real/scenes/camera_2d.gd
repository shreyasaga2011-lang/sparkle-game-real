extends Camera2D

@export var look_distance := 80.0
@export var look_speed := 6.0
@onready var player: CharacterBody2D = %player

var target_offset_y := 0.0

func _physics_process(delta: float) -> void:
	var look := Input.get_axis("look_up", "look_down")

	# Set target offset
	if look != 0:
		target_offset_y = look * look_distance
	else:
		target_offset_y = 0.0

	# Smoothly move camera
	offset.y = lerp(offset.y, target_offset_y, look_speed * delta)
