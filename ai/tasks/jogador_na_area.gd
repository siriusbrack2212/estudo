extends BTAction


@export var area_detecao_path: NodePath

@onready var area_detecao: Area2D = get_node()

func _ready():
	area_detecao.body_entered.connect(_on_body_entered)
	area_detecao.body_exited.connect(_on_body_exited)

func _on_body_entered(body):
	if body.is_in_group("player"):
		blackboard.set_var("player_detectado", true)
		blackboard.set_var("player_node", body)

func _on_body_exited(body):
	if body.is_in_group("player"):
		blackboard.set_var("player_detectado", false)
		blackboard.erase_var("player_node")

func _tick(_delta: float) -> Status:
	return SUCCESS
