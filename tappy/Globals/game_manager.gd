extends Node

var main_scene = preload("uid://ojsvie51nj4j")
var game_scene = load("uid://cmvi8rt67bmrw")

func load_scene(scene: String) -> void:
	if scene == "Game":
		get_tree().change_scene_to_packed(game_scene)
	elif scene == "Main":
		get_tree().change_scene_to_packed(main_scene)
