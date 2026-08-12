extends Node2D

const disc_scene = preload("res://Scenes/disc_scene.tscn")

# 1. Define your fixed Y coordinate
const FIXED_Y: float = 100.0

func _ready() -> void:
	pass 

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		spawn_item()

func spawn_item():
	# Check if scene loaded correctly
	if not disc_scene:
		return
		
	var disc_instance = disc_scene.instantiate()
	
	# 2. Get the current width of the viewport screen
	var screen_width = get_viewport_rect().size.x
	
	# 3. Generate a random X coordinate between 0 and the screen width
	var random_x = randf_range(0.0, screen_width)
	
	# 4. Set the position BEFORE adding to child, or right after
	disc_instance.global_position = Vector2(random_x, FIXED_Y)
	
	add_child(disc_instance)
