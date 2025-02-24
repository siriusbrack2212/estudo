extends Node2D
var listap1:Array = []
var listap2:Array = []
var pivo
var vida:int = 100
var dano:int = 10
var vidatual:int
var lista_atack: Array = [9,3,4,6,2,1,7,5]
var itemsraros: Array = ["espada", "chicote", "machado", "pistola"]
var itematual:int = 0
var itemescolhido:String = ""
var selecionando_item: bool = true  # Variável para controlar a exibição da lista de itens

func _process(delta: float) -> void:
	if Input.is_action_pressed("decisoes"):
		print("voce escolheu uma espada")
		

func _ready() -> void:
	escolha_item()
	
func seleção():
	pass
	
					 
func escolha_item():
	if itematual == 0:
		print("escolha")
		print(itemsraros)
	if Input.is_action_pressed("decisoes"):
		print("voce escolheu uma espada")	
	
