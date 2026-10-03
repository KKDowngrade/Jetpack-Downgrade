extends Node2D
@onready var score_label: Label = $HUD/ScoreLabel
@onready var coin: AudioStreamPlayer2D = $Coin

var score = 0

func _ready() -> void:
	score_label.text = str("Pontuação: ", score)

func _on_marker_2d_scored() -> void:
	score += 1
	coin.play()
	score_label.text = str("Pontuação: ", score)
