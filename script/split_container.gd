extends HBoxContainer
@onready var viewport1 = $container1/SubViewport
@onready var viewport2 = $container2/SubViewport
@onready var camera1 = $container1/SubViewport/Camera2D
@onready var camera2 =$container2/SubViewport/Camera2D
@onready var game = $container1/SubViewport/Game/World

func _ready() -> void:
	viewport2.world_2d = viewport1.world_2d
	
func _physics_process(delta: float):
	camera1.global_position = 	$container1/SubViewport/world/Player.global_position
	camera2.global_position = 	$container1/SubViewport/world/Player2.global_position
