@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var orcs: int = 200
	var elves: int = 100
	var total_warriors = orcs + elves
	
	print("total_warriors: ",total_warriors)
	
	var man_location: Vector2 = Vector2(25,20)
	var orc_location: Vector2 = Vector2(24,100)
	
	print("man_location len: ",man_location.length())
	print("orc_location len: ",orc_location.length())
	
	var orc_bigger_wrong: bool = orc_location > man_location
	
	print("orc_bigger_wrong : ",orc_bigger_wrong)
	
	var orc_bigger: bool = orc_location.length() > man_location.length()
	
	print("orc_bigger : ",orc_bigger)
