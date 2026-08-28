extends Control
class_name GameUI
@onready var game_over_label: Label = $MarginContainer/GameOverLabel

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("Close"):
		GameManager.load_scene("Main")
		
func _ready() -> void:
	SignalHub.tappy_die.connect(game_over)
	
func game_over() -> void:
	game_over_label.show()
	
