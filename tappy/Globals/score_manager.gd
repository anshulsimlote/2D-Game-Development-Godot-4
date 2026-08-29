extends Node

var _score: int = 0
var _highscore: int = 0:
	set(value):
			if value > _highscore:
				_highscore = value

func _ready() -> void:
	SignalHub.tappy_die.connect(on_tappy_die)
	
func on_tappy_die() -> void:
	_highscore = _score
	reset_score()
	
func add_points() -> void:
	_score += 1
	SignalHub.point_add(_score)

func reset_score() -> void:
	_score = 0
