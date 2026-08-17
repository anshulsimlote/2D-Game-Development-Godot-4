extends Area2D

@export var X_SPEED:float = 100.0
@export var Y_SPEED:float = 200.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	var jump_pressed:bool = Input.is_action_pressed("ui_text_backspace")
	var move_y_dir = -1.0 if jump_pressed else 1.0
	move_local_x(X_SPEED * delta)
	move_local_y(Y_SPEED * delta * move_y_dir)
