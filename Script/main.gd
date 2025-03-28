extends Node2D

@onready var camera = $Camera2D
@onready var car = $car

func _physics_process(delta: float) -> void:
	camera.position.y = car.position.y
	
	for i in $traffic_spawner.get_children():
		if i.is_in_group("timer"):
			continue
		i.position.y-= car.SPEED*delta

func _ready() -> void:
	camera.position = $ParallaxBackground.get_node("ParallaxLayer/Sprite2D").position
