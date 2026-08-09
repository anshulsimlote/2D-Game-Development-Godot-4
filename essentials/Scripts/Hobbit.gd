class_name Hobbit 
extends Node2D

signal hit_wizard
	
func _init() -> void:
	print("Hobbit In in _init"," Id: ", get_instance_id()," Name: ",name)
	
func _enter_tree() -> void:
	print("Hobbit In in _enter_tree"," Id: ", get_instance_id()," Name: ",name)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Hobbit In in _ready"," Id: ", get_instance_id()," Name: ",name)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rotate(PI * delta)

func hit_by_spell() -> void:
	scale = Vector2(0.5,0.5)
	set_process(false)

func _unhandled_input(event: InputEvent) -> void:
	if(event.is_action_pressed("hit_wizard")):
		hit_wizard.emit()
	
func _exit_tree() -> void:
	print("Hobbit In in _exit_tree"," Id: ", get_instance_id()," Name: ",name)
