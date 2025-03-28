extends Node2D

var t1 = preload("res://Scenes/traffic1.tscn")
var t2 = preload("res://Scenes/traffic2.tscn")
var t3 = preload("res://Scenes/traffic3.tscn")


func spawn_traffic(car,timer, time):
	timer.wait_time = time+randf_range(0, 2)
	var t = car.instantiate()
	t.scale = Vector2(.7, .7)
	var rand_int = randi()%3+1
	var rand_lane = "lane"+str(rand_int)
	var pos = get_parent().get_node("traffic_spawner").get_node(rand_lane).position
	t.position = pos
	get_parent().get_node("traffic").add_child(t)


func _on_timer_timeout() -> void:
	spawn_traffic(t1, $Timer, 2)
	pass # Replace with function body.




func _on_timer_2_timeout() -> void:
	spawn_traffic(t2, $Timer2, 3)
	pass # Replace with function body.


func _on_timer_3_timeout() -> void:
	spawn_traffic(t3, $Timer3, 2.5)
	pass # Replace with function body.
