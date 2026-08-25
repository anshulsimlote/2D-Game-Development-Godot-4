extends Control

var GAME = load("uid://cmvi8rt67bmrw")

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action("ui_accept"):
		get_tree().change_scene_to_packed(GAME)
