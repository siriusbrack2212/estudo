
extends NodeState

@export var player = CharacterBody2D
@export var animador = AnimatedSprite2D
var jumping_altitude:int = -100


func _on_process(_delta : float) -> void:
	pass


func _on_physics_process(_delta : float) -> void:
	if Input.is_action_just_pressed("pulo"):
		player.velocity.y = jumping_altitude * _delta
		player.move_and_slide()
		
	


func _on_next_transitions() -> void:
	pass


func _on_enter() -> void:
	pass


func _on_exit() -> void:
	pass
