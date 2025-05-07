extends CharacterBody2D
@onready var animatedSprite = $AnimatedSprite2D

const SPEED = 300.0
var oxygen = 100

func oxygen_decrease():
	oxygen-=.1
	if oxygen > 0:
		print("oxigeno del jugador 2:", oxygen)
	if oxygen <= 0 and oxygen >= -0.1:
		print("Jugador 2: Oxigeno agotado")
	

func _physics_process(delta: float) -> void:

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction_y := Input.get_axis("arr2", "ab2")
	var direction_x := Input.get_axis("izq2", "der2")
	
	if direction_x:
		velocity.x = direction_x * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	#animations in x
	if direction_x < 0 and direction_y == 0:
		animatedSprite.play("walk_red")
		animatedSprite.flip_h = true
	elif direction_x > 0 and direction_y == 0:
		animatedSprite.play("walk_red")
		animatedSprite.flip_h = false

	
	if direction_y:
		velocity.y = direction_y * SPEED
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)
		
	#animation in y
	if direction_y < 0 and direction_x == 0 :
		animatedSprite.play("walk_up_red")
		animatedSprite.flip_h
	elif direction_y > 0 and direction_x == 0 :
		animatedSprite.play("walk_down_red")
	
	if direction_y == 0 and direction_x == 0 :
		animatedSprite.play("idle_red")	
	move_and_slide()
