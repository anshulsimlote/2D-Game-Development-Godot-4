extends Node2D

@export var disc_scene:PackedScene

func _ready() -> void:
	pass 

func spawn_item():
	var disc_instance = disc_scene.instantiate()	
	add_child(disc_instance)


func _on_fall_timer_timeout() -> void:
	spawn_item()
