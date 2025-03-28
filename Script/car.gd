extends CharacterBody2D

var SPEED = 100

func _ready() -> void:
	self.position = get_parent().get_node("car_position").position
	
func _physics_process(delta: float) -> void:
	self.position.y-= delta*SPEED
