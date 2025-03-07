extends CharacterBody2D

@export var animador : AnimatedSprite2D
var dir: int = 1
const GRAVITY = 500
const SPEED = 100
func _physics_process(delta: float) -> void:
	if !is_on_floor():
		velocity.y = GRAVITY * delta * SPEED
		velocity.x = dir * SPEED

	move_and_slide()
