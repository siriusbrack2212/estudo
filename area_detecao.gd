extends Area2D

@onready var arvore_de_reaçoes: BTPlayer

func _ready():
	arvore_de_reaçoes = get_parent() # Obtém a referência ao BTPlayer

func _on_body_entered(body: Node2D) -> void:
	print("entrou")
	if arvore_de_reaçoes != null and arvore_de_reaçoes.blackboard != null:
		arvore_de_reaçoes.blackboard.set_var("dentro_da_area", true)
	else:
		print("Erro: Blackboard não encontrado!")
	
