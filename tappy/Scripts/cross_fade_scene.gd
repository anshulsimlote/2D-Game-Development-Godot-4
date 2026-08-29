extends CanvasLayer

@export var game:PackedScene
@export var main:PackedScene
@onready var animation_player: AnimationPlayer = $AnimationPlayer
var _next_scene:PackedScene

func start_transition(next_scene:PackedScene) -> void:
	_next_scene = next_scene
	animation_player.play("fade")
	
func change_to_next() -> void:
	get_tree().change_scene_to_packed(_next_scene)
	
func load_scene(scene: String) -> void:
	if scene == "Game":
		start_transition(game)
	elif scene == "Main":
		start_transition(main)
