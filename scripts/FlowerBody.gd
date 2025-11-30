extends Node2D

class_name FlowerBody

var is_dragging := false
var canvas
var sprite
var collision_shape
var panel
@export var flowerData : FlowerData

func _ready():
	sprite = $Sprite2D
	collision_shape = $CollisionShape2D
	canvas = get_tree().root.get_node("SceneRoot/Canvas")
	panel = $Panel
	
	#panel._gui_input = input_event
	
'''
func input_event(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		# Start dragging when clicked on the collision area
		is_dragging = true
		start_drag()
'''

func start_drag():
	is_dragging = true
	set_as_top_level(true) # makes global positioning correct

func _process(delta):
	if is_dragging:
		global_position = get_global_mouse_position()

func _input(event):
	if not is_dragging:
		return

	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		_try_drop()

func _try_drop():
	is_dragging = false

	# check if dropped inside the Canvas rect
	if canvas.get_global_rect().has_point(get_global_mouse_position()):
		# convert mouse location into canvas local space
		#global_position = canvas.to_global(canvas.to_local(global_position))
		reparent(canvas)
	else:
		queue_free()
