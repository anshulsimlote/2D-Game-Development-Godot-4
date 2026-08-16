extends Area2D

class_name DiscController

const BUFFER:float = 60.0
@export var SPEED:float = 100.0
@export var ROTATION_SPEED:float = 2 * PI
@onready var dice: Sprite2D = $Dice
var rotation_speed = ROTATION_SPEED
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if randf() < 0.5:
		rotation_speed *= -1
	position.x = randf_range(get_viewport_rect().position.x+BUFFER,
	get_viewport_rect().end.x-BUFFER)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	move_local_y( SPEED * delta)
	dice.rotate(rotation_speed * delta)
	check_offscreen()

	
func check_offscreen() -> void:
	if get_viewport_rect().end.y < position.y:
		get_tree().paused = true
