extends Control
class_name GameUI
@onready var game_over_label: Label = $MarginContainer/GameOverLabel

func game_over() -> void:
	game_over_label.show()
	
