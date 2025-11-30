extends Panel  # or Control

'''
func _gui_input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		# find the parent FlowerBody and call start_drag()
		var body = get_parent()  # assuming Panel is directly under FlowerBody
		if body.has_method("start_drag") and not body.is_dragging:
			body.start_drag()
'''

func _get_drag_data(at_position: Vector2):
	var body = get_parent()  # assuming Panel is directly under FlowerBody
	if body.has_method("start_drag") and not body.is_dragging:
		body.start_drag()
