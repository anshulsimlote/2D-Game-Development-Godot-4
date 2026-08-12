extends Node2D

class_name FoxController

@export var fox_speed: float = 200.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func move(delta: float) -> void:
	var move_speed:float = fox_speed * delta
	if(Input.is_action_pressed("ui_right")):
		move_local_x(move_speed)
	if(Input.is_action_pressed("ui_left")):
		move_local_x(-move_speed)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	move(delta)
