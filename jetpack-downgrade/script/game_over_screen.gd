extends Control

@onready var rich_text_label_2: RichTextLabel = $PanelContainer/VBoxContainer/RichTextLabel2

func _ready() -> void:
	hide()
	EventBus.scored.connect(_on_scored)
func _on_reset_pressed() -> void:
	get_tree().reload_current_scene()


func _on_scored(value: int) -> void:
	rich_text_label_2.text=str("Pontuação: ", value)
	
	

func _on_main_menu_botton_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/main_menu.tscn")
