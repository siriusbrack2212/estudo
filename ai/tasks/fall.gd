extends BTAction
var speed: int = 30
var gravity: int = 200
var npc : CharacterBody2D

func _setup() -> void:
	npc = agent as CharacterBody2D

func _tick(delta: float) -> Status:
	npc.velocity.y = delta * gravity * speed
	npc.move_and_slide()
	if npc.is_on_floor():
		return SUCCESS
	else:
		return FAILURE	
