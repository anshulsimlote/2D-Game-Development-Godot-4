extends Node2D

@export var disc_scene:PackedScene

var _score: int = 0
@onready var score_label: Label = $ScoreLabel

func _ready() -> void:
	pass 

func spawn_item():
	var disc_instance = disc_scene.instantiate()	
	add_child(disc_instance)


func _on_fall_timer_timeout() -> void:
	spawn_item()


func _on_fox_scene_eaten_dice() -> void:
	_score += 1
	score_label.text = "%04d" % _score
