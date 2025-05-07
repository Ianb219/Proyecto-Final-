extends Node2D
@onready var placa1 = $Placa
@onready var placa2 = $Placa2

func _process(delta: float) -> void:
	if placa1.control and placa2.control and Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene_to_file("res://scenes/game.tscn")
