
extends NodeState
var SPEED:int = 200
var gravity:int = 200
@export var player : CharacterBody2D
@export var animador : AnimatedSprite2D

func _on_process(_delta : float) -> void:
	pass


func _on_physics_process(_delta : float) -> void:
	var direcao = Input.get_axis("lado_esquerdo","lado_direito")
	if direcao:
		player.velocity.x =  direcao* SPEED
		print(player.velocity)
	else:
		player.velocity.x = move_toward(player.velocity.x,0,SPEED)
	
	player.move_and_slide()

		
	
	


func _on_next_transitions() -> void:
	pass


func _on_enter() -> void:
	pass


func _on_exit() -> void:
	pass
