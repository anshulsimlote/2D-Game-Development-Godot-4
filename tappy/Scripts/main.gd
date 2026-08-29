extends Control

@onready var score: Label = $MarginContainer/Score

func _ready() -> void:
	get_tree().paused = false
	score.text = "%04d" % ScoreManager._highscore

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		GameManager.load_scene("Game")	
