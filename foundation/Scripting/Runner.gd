@tool
extends EditorScript

func create_hero() -> void:
	var batman:Hero = Hero.new("Bat Man",50)
	batman.display_info()
	print("batman ",batman)
	
func _run() -> void:
	print("In Runner Script")
	var ironman:Character = Character.new("Iron Man",100)
	print("ironman ",ironman)
	var superman:Character = Character.new()
	superman.health = -1
	superman.name = "Super Man"
	print("superman ",superman)
	print("Before create_hero")
	create_hero()
	print("After create_hero")
