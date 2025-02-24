extends CharacterBody2D

@onready var animated = $AnimationPlayer
var gravity:int = 200
const SPEED = 300.0
const JUMP_VELOCITY = -100
enum states {Idle,run,faling}
var current_state 

func _ready() -> void:
	current_state = states.Idle

func _process(delta: float) -> void:
	pass	
	
func _physics_process(delta: float) -> void:
	gravidade_personagem(delta)
	run(delta)
	jump(delta)
	idle(delta)
	print("estadoautal" + states.keys()[current_state])
	print(velocity)
	animar()
	move_and_slide()
	
   
func gravidade_personagem(delta):
	if  !is_on_floor():
		velocity.y += gravity *delta
		current_state = states.faling
		
											
		
		
func idle(delta):
	if is_on_floor() and velocity == Vector2(0,0):
		current_state = states.Idle				
		

func run(delta):
	var direcao = Input.get_axis("lado_esquerdo","lado_direito")		
	if direcao:
		velocity.x =  direcao * SPEED
		current_state = states.run
	else:
		velocity.x = move_toward(velocity.x,0,SPEED)
		

func jump(delta):
	if is_on_floor() and Input.is_action_just_pressed("pulo"):
		velocity.y =  JUMP_VELOCITY
	
func animar():
	if current_state == states.Idle:
		animated.play("idle")
	elif current_state == states.run and  velocity.x > 0:
		animated.play("run")
	elif current_state == states.run and  velocity.x < 0 :
		animated.play("run_left")
