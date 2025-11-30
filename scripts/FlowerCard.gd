extends Control

class_name FlowerCard

@export var flower_data: FlowerData
@onready var drag_layer := get_tree().root.get_node("SceneRoot/DragLayer")
@onready var flower_body_scene := preload("res://scenes/FlowerBody.tscn")

@onready var flower_bucket := get_parent()
var index: int = 0

func _gui_input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		floristryScore.collect_flower(flower_data)
		_spawn_flower_body()
		# delete card from bucket
		flower_bucket.collected_flowers.remove_at(index)
		queue_free()

func _spawn_flower_body():
	var fb = flower_body_scene.instantiate()
	#fb.init_from_data(flower_data)
	fb.get_node("Sprite2D").texture = flower_data.bodyImage
	drag_layer.add_child(fb)

	# start dragging at mouse spot
	fb.global_position = get_global_mouse_position()
	fb.start_drag()
