extends Button

@onready var score_panel = get_node("../ScorePanel")  # adjust path as needed

func _pressed():
	score_panel.visible = not score_panel.visible  # toggle visibility
	score_panel.render_score()

'''
# Reference to the canvas node
@onready var canvas = get_node("/root/SceneRoot/Canvas")

# Function to handle the button press
func _pressed():
	var score_scene = load("res://scenes/score_scene.tscn")  # Load your score scene
	var new_score_scene = score_scene.instantiate()

	# Copying the Canvas node and all its children
	var new_canvas = canvas.duplicate()  # Duplicate the entire Canvas node
	new_score_scene.add_child(new_canvas)  # Add the duplicated canvas to the score scene

	# Transition to the score scene
	get_tree().current_scene.queue_free()  # Remove the current scene
	get_tree().root.add_child(new_score_scene)  # Add the score scene
	#get_tree().change_scene_to_file("res://scenes/score_scene.tscn")
'''
