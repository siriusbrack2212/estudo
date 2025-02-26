extends NodeState
@export var player : CharacterBody2D
@export var animador : AnimatedSprite2D
var gravity:int = 200
var SPEEd :int = 200


func _on_process(_delta : float) -> void:
	pass


func _on_physics_process(_delta : float) -> void:
	if !player.is_on_floor():
		player.velocity.y = gravity * SPEEd
	
	player.move_and_slide()


func _on_next_transitions() -> void:
	pass
		


func _on_enter() -> void:
	pass


func _on_exit() -> void:
	pass
