extends Node2D

@onready var wizard: Wizard = $Wizard
@onready var hobbit: Hobbit = $Hobbit

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	wizard.cast_spell.connect(_on_wizard_cast_spell)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_wizard_cast_spell() -> void:
	# Automatically finds all hobbits currently in the scene
	get_tree().call_group("hobbits","hit_by_spell")		


func _on_hobbit_hit_wizard() -> void:
	print("HIT WIZZARD")
	# Automatically finds all hobbits currently in the scene
	wizard.hit_by_hobbit()
	hobbit.hit_wizard.disconnect(_on_hobbit_hit_wizard)
