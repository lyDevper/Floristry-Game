extends Panel

# Assuming the Label node inside ScorePanel is called "Label"
@onready var score_label = $Label

# Function to update the score text in the label
func render_score():
	var score_text = "Your floristry features :\n"
	score_text += "\n"
	# Loop through all semantics and display their score
	for key in floristryScore.total_semantics.keys():
		score_text += "  %s: %d\n" % [key, floristryScore.total_semantics[key]]
	
	# Update the label with the new score text
	score_label.text = score_text

# You can call this function to update the text whenever needed
func _ready():
	render_score()
