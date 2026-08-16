extends Area2D

class_name FoxController

signal  eaten_dice

@onready var fox: Sprite2D = $Fox
@export var fox_speed: float = 200.0
@onready var eat_sound: AudioStreamPlayer = $EatSound

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func move(delta: float) -> void:
	var move_dir:float = Input.get_axis("ui_left","ui_right")
	var move_speed:float = fox_speed * delta
	move_local_x(move_speed * move_dir)
	if !is_zero_approx(move_dir):
		fox.flip_h = move_dir > 0.0 
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	move(delta)


func _on_area_entered(area: Area2D) -> void:
	if area is DiscController:
		area.queue_free()
		eat_sound.play()
		eaten_dice.emit()
