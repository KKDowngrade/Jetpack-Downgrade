extends Area2D
class_name Spike
@onready var damaged_sound: AudioStreamPlayer2D = $DamagedSound



signal damaged

func _ready() -> void:
	EventBus.game_ended.connect(_on_game_ended)

func _physics_process(delta: float) -> void:
	position.x += -200 * delta
	
	


func _on_body_entered(body: Node2D) -> void:
	damaged.emit()
	damaged_sound.play()
	queue_free()
	
func _on_game_ended() -> void:
	set_physics_process(false)
