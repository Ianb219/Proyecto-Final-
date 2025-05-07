extends Node2D
@onready var placa1 =$Split_container/container1/SubViewport/world/Placa
@onready var placa2 =$Split_container/container1/SubViewport/world/Placa2
@onready var player1=$Split_container/container1/SubViewport/world/Player
@onready var player2=$Split_container/container1/SubViewport/world/Player2

func _ready() -> void:
	entered_house()

func entered_house():
	player1.global_position = Vector2(700, 40)
	player2.global_position = Vector2(700, 40)
	
func _process(delta: float) -> void:
	if placa1.control and placa2.control and Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene_to_file("res://scenes/house.tscn")
		air_recharge(placa1,placa2)
	
	player1.oxygen_decrease()
	player2.oxygen_decrease()
	
func air_recharge(placa1, placa2):
		player1.oxygen = 100
		player2.oxygen = 100
		print("respiro")
