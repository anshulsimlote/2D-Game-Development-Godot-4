extends Node


signal  tappy_die

func tappy_died() -> void:
	tappy_die.emit()
