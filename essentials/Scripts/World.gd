extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_wizard_cast_spell() -> void:
	# Automatically finds all hobbits currently in the scene
	get_tree().call_group("hobbits","hit_by_spell")
