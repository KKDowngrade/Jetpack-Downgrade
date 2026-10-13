extends Node2D
@onready var score_label: Label = $HUD/ScoreLabel
@onready var coin: AudioStreamPlayer2D = $Coin
@onready var health: Sprite2D = $Health
@onready var damage: AudioStreamPlayer2D = $Damage
@onready var game_over_screen: Control = $HUD/GameOverScreen


signal died

var score = 0
var life = 4

func _ready() -> void:
	score_label.text = str("Pontuação: ", score)
	
func _process(delta: float) -> void:
	if life == 4:
		health.set_frame(0)
	else:
		if life == 3:
			health.set_frame(1)
		else:
			if life == 2:
				health.set_frame(2)
			else:
				if life == 1:
					health.set_frame(3)
				else:
					health.set_frame(4)
					game_over_screen.show()
					died.emit()
					
					EventBus.game_ended.emit()
					EventBus.scored.emit(score)
				

func _on_marker_2d_scored() -> void:
	score += 1
	coin.play()
	score_label.text = str("Pontuação: ", score)


func _on_marker_2d_2_damaged() -> void:
	life -= 1
	damage.play()
