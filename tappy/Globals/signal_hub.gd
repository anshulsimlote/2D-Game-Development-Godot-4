extends Node


signal  tappy_die
signal point_scored(score:int)

func tappy_died() -> void:
	tappy_die.emit()
	
func point_add(score:int) -> void:
	point_scored.emit(score)
