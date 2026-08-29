extends Node

const SAVE_PATH: String = "user://save_game.dat"
var _score: int = 0
var _highscore: int = 0

func _ready() -> void:
	load_from_file()
	SignalHub.tappy_die.connect(on_tappy_die)
	
func on_tappy_die() -> void:
	if _score > _highscore:
		_highscore = _score
		save_to_file()
	reset_score()
	
func add_points() -> void:
	_score += 1
	SignalHub.point_add(_score)

func reset_score() -> void:
	_score = 0

func save_to_file():
	var file = FileAccess.open(SAVE_PATH, FileAccess.WRITE)
	if !file: 
		push_error("save_to_file no file found")
		return
	file.store_32(_highscore)

func load_from_file():
	var file = FileAccess.open(SAVE_PATH, FileAccess.READ)
	if !file: 
		push_error("load_from_file no file found")
		return
	_highscore = file.get_32()
