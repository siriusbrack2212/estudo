
extends NodeState


@export var player : CharacterBody2D
@export var animador : AnimatedSprite2D



func _on_process(_delta : float) -> void:
	pass


func _on_physics_process(_delta : float) -> void:
	pass


func _on_next_transitions() -> void:
	if !player.is_on_floor():
		

func _on_enter() -> void:
	pass


func _on_exit() -> void:
	pass
