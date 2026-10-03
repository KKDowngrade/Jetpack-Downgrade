extends CharacterBody2D


var alive: bool = true


func _physics_process(delta: float) -> void:
	# Add the gravity.
	
	
	
	var gravity = get_gravity()
	velocity += gravity * 0.02
	
	if Input.is_action_pressed("jump"):
		velocity.y = -500
	move_and_slide()
