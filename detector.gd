extends Area2D
#exportamos a bht para conseguirmos setar variavel no blackbord
@export var arvore_de_açoes : BTPlayer
#definimos uma variavel do tipo blackbord 
var blackbord : Blackboard
var player: Node2D
var target : bool



	

func _on_body_entered(body: Node2D):
	if body.is_in_group("player"):
		player = body
		arvore_de_açoes.blackboard.set_var("player",body)
		arvore_de_açoes.blackboard.set_var("target",true)
		print(player)


func _on_body_exited(body: Node2D):
	if body.is_in_group("player"):
		arvore_de_açoes.blackboard.set_var("target",false)
		arvore_de_açoes.blackboard.set_var("player",null)
	
