extends CharacterBody2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var jump: AudioStreamPlayer2D = $"../Jump"
@onready var death: AudioStreamPlayer2D = $"../Death"


var alive: bool = true


func _physics_process(delta: float) -> void:
	# Add the gravity.
	
	
	
	var gravity = get_gravity()
	velocity += gravity * 0.02
	
	if alive == false:
		move_and_slide()
		return
	
	if Input.is_action_pressed("jump"):
		velocity.y = -500
		jump.play()
		animation_player.play("player")
	else:
		animation_player.stop()
	move_and_slide()


func _on_node_2d_died() -> void:
	alive = false
	death.play()
	
