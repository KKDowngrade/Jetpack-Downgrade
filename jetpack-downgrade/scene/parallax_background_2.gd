extends ParallaxBackground


func _ready() -> void:
	set_process(true)
	EventBus.game_ended.connect(_on_game_ended)


func _on_game_ended() -> void:
	set_process(false)


func _process(delta):
	scroll_offset.x -= 200    * delta
