extends BTAction

@export var range_min_dir : float = 50.0 
@export var range_max_dir : float = 100.0


@export var position_var : StringName = &"pos"
@export var dir_var : StringName = &"dir"

func _tick(_delta: float) -> Status:
	var pos: Vector2
	var dir = rando_dir()
	pos = rando_pos(dir)
	blackboard.set_var(position_var,pos)
	print(dir, " " ,pos,"agent pos:", agent.global_position.x)
	return SUCCESS
	
	
func rando_pos(dir):
	var vector: Vector2
	var distance = randi_range(range_min_dir,range_max_dir)	* dir
	var final_pos = (distance + agent.global_position.x)
	vector.x = final_pos
	return vector
	
func rando_dir():
	var dir = randi_range(-2,1)
	if abs(dir) != dir:
		dir = -1	
	else:
		dir = 1
	blackboard.set_var(dir_var,dir)	
	return dir		
