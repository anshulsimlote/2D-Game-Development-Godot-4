extends Node

const MAIN = preload("uid://ojsvie51nj4j")
const GAME = preload("uid://cmvi8rt67bmrw")
const LOADING = preload("uid://dbfypenpx5w1s")
var _next_scene:PackedScene

#region Orignal
#func load_scene(scene: String) -> void:
	#if scene == "Game":
		#get_tree().change_scene_to_packed(GAME)
	#elif scene == "Main":
		#get_tree().change_scene_to_packed(MAIN)
#endregion

func change_to_next() -> void:
	get_tree().change_scene_to_packed(_next_scene)
	
#region Simple Change
func load_scene(scene: String) -> void:
	if scene == "Game":
		_next_scene = GAME
	elif scene == "Main":
		_next_scene = MAIN
	get_tree().change_scene_to_packed(LOADING)
#endregion
