extends Area2D
class_name Coin
@onready var coin: AudioStreamPlayer2D = $Coin

signal scored

func _ready() -> void:
	EventBus.game_ended.connect(_on_game_ended)

func _physics_process(delta: float) -> void:
	position.x += -200 * delta
	
	


func _on_body_entered(body: Node2D) -> void:
	scored.emit()
	coin.play()
	queue_free()
func _on_game_ended() -> void:
	set_physics_process(false)
