extends Area2D

class_name FoxController

@export var fox_speed: float = 200.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func move(delta: float) -> void:
	var move_left:bool = Input.is_action_pressed("ui_left")
	var move_right:bool = Input.is_action_pressed("ui_right")
	var move_speed:float = fox_speed * delta
	var move_dir:float = 0.0
	
	if move_left: move_dir -= 1.0
	if move_right: move_dir += 1.0
	
	move_local_x(move_speed * move_dir)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	move(delta)
