extends BTAction

var npc : CharacterBody2D
var velocidade_de_perseguiçao:int = 5000

func _setup() -> void:
	npc = agent as CharacterBody2D

func _tick(_delta: float) -> Status:
	var player = blackboard.get_var("player")

	if player and npc.is_on_floor():
		npc.navegador.set_target_position(player.global_position)
		var direction = (npc.navegador.get_next_path_position() - npc.global_position).normalized()
		npc.velocity = direction * velocidade_de_perseguiçao
		npc.velocity = npc.velocity * _delta
		npc.move_and_slide()
	else:
		return FAILURE	
	if npc.global_position.distance_to(player.global_position) < 10 : # Ajuste o valor limite conforme necessário
		return SUCCESS	
	
	return RUNNING	
