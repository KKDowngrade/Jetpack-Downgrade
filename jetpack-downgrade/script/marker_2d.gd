extends Marker2D

const COIN = preload("uid://4todidedwnvg")

signal scored

@export var minimum_height: float = -150.0
@export var maximum_height: float = 150.0




func _on_timer_timeout() -> void:
	var instance : Coin = COIN.instantiate()
	var random_height = randf_range(minimum_height, maximum_height)
	instance.position.y = random_height
	add_child(instance)
	instance.scored.connect(scored.emit)
