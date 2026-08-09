class_name Wizard

extends Node2D

signal cast_spell

func _init() -> void:
	print("Wizard In in _init"," Id: ", get_instance_id()," Name: ",name)
	
func _enter_tree() -> void:
	print("Wizard In in _enter_tree"," Id: ", get_instance_id()," Name: ",name)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Wizard In in _ready"," Id: ", get_instance_id()," Name: ",name)
	hide()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _exit_tree() -> void:
	print("Wizard In in _exit_tree"," Id: ", get_instance_id()," Name: ",name)


func _on_reveal_timer_timeout() -> void:
	show()


func _on_spell_timer_timeout() -> void:
	print("Spell")
	cast_spell.emit()
	
func hit_by_hobbit() -> void:
	scale = Vector2(2.0,2.0)
