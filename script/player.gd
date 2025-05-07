extends CharacterBody2D
@onready var animatedSprite = $AnimatedSprite2D

const SPEED = 300.0
var oxygen = 100

func oxygen_decrease():
	oxygen-=.1
	if oxygen >= 0 :
		print("oxigeno del jugador 1:", oxygen)
	elif  oxygen <= 0 and oxygen >= -0.1:
		print("Jugador 1: Oxigeno agotado") 
	

func _physics_process(delta: float) -> void:


	var direction_y := Input.get_axis("arr", "ab")
	var direction_x := Input.get_axis("izq", "der")
	if direction_x:
		velocity.x = direction_x * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	#animations in x
	if direction_x < 0 and direction_y == 0:
		animatedSprite.play("walk_blue")
		animatedSprite.flip_h = true
	elif direction_x > 0 and direction_y == 0:
		animatedSprite.play("walk_blue")
		animatedSprite.flip_h = false

	
	if direction_y:
		velocity.y = direction_y * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)
		
	#animation in y
	if direction_y < 0 and direction_x == 0 :
		animatedSprite.play("walk_up_blue")
		animatedSprite.flip_h
	elif direction_y > 0 and direction_x == 0 :
		animatedSprite.play("walk_down_blue")
	
	if direction_y == 0 and direction_x == 0 :
		animatedSprite.play("idle_blue")	
	move_and_slide()
