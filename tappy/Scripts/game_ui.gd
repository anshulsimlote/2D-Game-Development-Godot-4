extends Control
class_name GameUI
@onready var game_over_label: Label = $MarginContainer/GameOverLabel
@onready var press_jump: Label = $MarginContainer/PressJump
@onready var press_jump_timer: Timer = $PressJumpTimer
@onready var game_over_sound: AudioStreamPlayer = $GameOverSound

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("Close"):
		GameManager.load_scene("Main")
	elif event.is_action_pressed("ui_accept") and press_jump.visible:
		get_tree().paused = false
		GameManager.load_scene("Game")
		
func _ready() -> void:
	SignalHub.tappy_die.connect(game_over)
	
func game_over() -> void:
	game_over_sound.play()
	press_jump_timer.start()
	game_over_label.show()

func _on_timer_timeout() -> void:
	game_over_label.hide()
	press_jump.show()
