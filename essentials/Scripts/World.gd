extends Node2D

@onready var hobbitList: Array[Hobbit] = [$Hobbit,$Hobbit2,$Hobbit3]


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_wizard_cast_spell() -> void:
	for hobbit in hobbitList:
		hobbit.scale = Vector2(0.5,0.5)
