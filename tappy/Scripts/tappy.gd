extends CharacterBody2D
class_name Tappy

const SPEED = 50.0
const JUMP_VELOCITY = -350.0
@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _physics_process(delta: float) -> void:
	velocity += get_gravity() * delta
	
	if Input.is_action_just_pressed("ui_accept"):
		velocity.y = JUMP_VELOCITY
		animation_player.play("fly")
		
	velocity.x = SPEED

	move_and_slide()
	
	if is_on_floor() || is_on_ceiling() : die()

func die() -> void:
	SignalHub.tappy_died()
	get_tree().paused = true
