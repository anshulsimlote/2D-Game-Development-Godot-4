@tool
extends EditorScript


# Called when the script is executed (using File -> Run in Script Editor).
func _run() -> void:
	var ring: String = "Gold"
	
	if(ring == "Gold"):
		print("If Yes")
	else:
		print("Else No")
		
	var typeList: Array[int] = []
	for i in range(1, 11):
		typeList.append(i)
	
	print("typeList ",typeList)
