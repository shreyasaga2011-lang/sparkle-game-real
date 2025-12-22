extends CharacterBody2D


const SPEED = 100.0

func _physics_process(delta):
	if Input.is_action_just_pressed("click"):
		velocity.y = -SPEED
	

	
	move_and_slide()
