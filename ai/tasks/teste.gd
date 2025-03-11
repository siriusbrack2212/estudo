extends BTAction

var npc : CharacterBody2D

func _setup() -> void:
	npc = agent as CharacterBody2D
	if !npc.is_on_floor():
		print("o maluco ta voando ")

func _tick(delta: float) -> Status:
	if !npc.is_on_floor():
		return SUCCESS
	else:
		return FAILURE	
