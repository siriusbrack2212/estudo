
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
	else:
		player.velocity.x = move_toward(player.velocity.x,0,SPEED)
	
		

	_on_enter()
	_on_exit()
	player.move_and_slide()

		
	
	


func _on_next_transitions() -> void:
	if !player.is_on_floor():
		transition.emit("faling")
		print("trocou para caindo")
	elif player.velocity.x == 0:
		transition.emit("Idle")


func _on_enter() -> void:
	if player.velocity.x>0:
		animador.flip_h = false
		animador.play("run_animation")
	elif player.velocity.x < 0:
		animador.flip_h = true
		animador.play("run_animation")
	
	
	


func _on_exit() -> void:
	pass
