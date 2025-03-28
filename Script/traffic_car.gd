extends CharacterBody2D

var SPEED = 50
@onready var area = $Area2D

func _physics_process(delta):
	velocity = Vector2.UP * SPEED * delta
	move_and_slide()
	var overlapping_areas = area.get_overlapping_areas()
	for i in overlapping_areas:
		if i.is_in_group("traffic"):
			i.get_parent().queue_free()
			
