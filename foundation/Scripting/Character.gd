class_name Character extends Object

var health: int = 100:
	set(value):
		health = clamp(value, 0, 100)
		print("Health changed to: ", health)
	get:
		return health
var name: String = "PLACEHOLDER NAME":
	set(value):
		name = value
	get:
		return name

# The constructor method
func _init(start_name: String = "PLACEHOLDER NAME", start_health: int = 100):
	name = start_name
	health = start_health
	print(name, " initialized with ", health, " health.")

func _ready():
	# This runs later, when the node enters the active scene tree
	print(name, " is now ready in the scene!")
	
func _notification(what)-> void:
	if what == NOTIFICATION_PREDELETE:
		print(" DIE!!! ")

func display_info() -> void:
	print(" Name: ", name," Health: ",health)
