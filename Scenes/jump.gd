extends NodeState
@export var player : CharacterBody2D
@export var animador : AnimatedSprite2D
var altura_pulo:int = -400
var SPEEd :int = 200
var gravity:int = 50
var força_do_pulo:int = -1000
var força_do_pulo_atual:float = 0.0
func _on_process(_delta : float) -> void:
	pass


func _on_physics_process(_delta : float) -> void:
	if força_do_pulo_atual > altura_pulo:
		força_do_pulo_atual += força_do_pulo * _delta * SPEEd
		player.velocity.y = força_do_pulo_atual
		
	
	
	print(player.velocity.y)
	player.move_and_slide()
		
		




func _on_next_transitions() -> void:
		transition.emit("faling")
	
	
	


func _on_enter() -> void:
	pass
	
	


func _on_exit() -> void:
	pass
