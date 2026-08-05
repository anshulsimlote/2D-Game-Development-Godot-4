@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	print("Variables!")
	var age: int = 19
	print("Age:",age, " Type ", type_string(typeof(age)))
