extends Node
class_name Game

@onready var game_ui: GameUI = $CanvasLayer/GameUI
@onready var pipe_holder: Node2D = $Pipe_Holder
@onready var upper_spwan: Marker2D = $Boundary/Upper_Spwan
@onready var lower_spawn: Marker2D = $Boundary/Lower_Spawn
@export var pipes_scenes: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	spawn_pipes()


func spawn_pipes() -> void:
	var pipe_instance = pipes_scenes.instantiate()	
	pipe_instance.position.x = upper_spwan.position.x
	pipe_instance.position.y = randf_range(upper_spwan.position.y, lower_spawn.position.y)
	pipe_holder.add_child(pipe_instance)


func _on_spawn_timer_timeout() -> void:
	spawn_pipes()
