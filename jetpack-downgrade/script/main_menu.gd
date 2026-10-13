extends Control
@onready var fullscreen: Button = $VBoxContainer/Fullscreen

var full_screen = false

func _process(delta: float) -> void:
	if full_screen == false:
		fullscreen.text=str("Modo Fullscreen")
	else:
		fullscreen.text=str("Modo Janela")




func _on_fullscreen_pressed() -> void:
	if full_screen == false:
		full_screen = true
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	else:
		full_screen = false
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)


func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/game.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()
