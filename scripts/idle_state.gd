
extends NodeState

@export var player : CharacterBody2D
@export var animador : AnimatedSprite2D
var gravity : int = 100
var Speed :int = 300



func _on_process(_delta : float) -> void:
	pass


func _on_physics_process(_delta : float) -> void:

	_on_enter()
	player.move_and_slide()


func _on_next_transitions() -> void:
	if Input.get_axis("lado_esquerdo","lado_direito"):
		transition.emit("walk")
	if !player.is_on_floor():
		transition.emit("faling")
		print("trocou")
	if  Input.is_action_just_pressed("pulo"):	
		transition.emit("jump")

func _on_enter() -> void:
	if player.is_on_floor():
		animador.play("Idle_animation")	


func _on_exit() -> void:
	animador.stop()
