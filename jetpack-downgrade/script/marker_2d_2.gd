extends Marker2D

const SPIKE = preload("uid://cm3n8nhpgeowa")


signal damaged

@export var minimum_height: float = -150.0
@export var maximum_height: float = 150.0




func _on_timer_timeout() -> void:
	var instance : Spike = SPIKE.instantiate()
	var random_height = randf_range(minimum_height, maximum_height)
	instance.position.y = random_height
	add_child(instance)
	instance.damaged.connect(damaged.emit)
