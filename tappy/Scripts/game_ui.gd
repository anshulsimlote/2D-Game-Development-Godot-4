extends Control
class_name GameUI
@onready var game_over_label: Label = $MarginContainer/GameOverLabel
@onready var press_jump: Label = $MarginContainer/PressJump
@onready var press_jump_timer: Timer = $PressJumpTimer
@onready var game_over_sound: AudioStreamPlayer = $GameOverSound
@onready var score_label: Label = $MarginContainer/ScoreLabel

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("Close"):
		GameManager.load_scene("Main")
	elif event.is_action_pressed("ui_accept") and press_jump.visible:
		get_tree().paused = false
		GameManager.load_scene("Game")
		
func _ready() -> void:
	ScoreManager.reset_score()
	SignalHub.tappy_die.connect(game_over)
	SignalHub.point_scored.connect(points_updated)
	
func points_updated(score:int) -> void:
	score_label.text = "%04d" % score
	
func game_over() -> void:
	game_over_sound.play()
	press_jump_timer.start()
	game_over_label.show()

func _on_timer_timeout() -> void:
	game_over_label.hide()
	press_jump.show()
