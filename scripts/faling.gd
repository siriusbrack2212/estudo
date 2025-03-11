extends NodeState
@export var player : CharacterBody2D
@export var animador : AnimatedSprite2D
var gravity:int = 50
var SPEEd :int = 200


func _on_process(_delta : float) -> void:
	pass


func _on_physics_process(_delta : float) -> void:
	player.velocity.y = gravity * SPEEd * _delta
		
	
	player.move_and_slide()

func _on_next_transitions() -> void:
	
	if player.is_on_floor():
		transition.emit("Idle")
		animador.stop
		print("trocou1")


func _on_enter() -> void:
	
	animador.play("faling_animation")
	

func _on_exit() -> void:
	pass
