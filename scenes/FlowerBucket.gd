extends Control
class_name FlowerBucket

@export var flower_card_scene: PackedScene = preload("res://scenes/FlowerCard.tscn")  # Reference to the FlowerCard scene template

var collected_flowers: Array = []

# Called when the scene is loaded
func _ready():
	# You could populate the FlowerBucket with cards here, if needed, using the list
	collected_flowers = bagManager.collected_flowers
	update_flower_card()

func update_flower_card() -> void:
	for child in get_children():
		child.queue_free()

	# re render each
	for index in range(collected_flowers.size()):
		var flower_data = collected_flowers[index]
		add_flower_card(flower_data, index)

# Function to add a new flower card to the bottom of the stack
func add_flower_card(flower_data: FlowerData, index: int) -> void:
	var flower_card = flower_card_scene.instantiate()  # Instantiate the FlowerCard scene
	flower_card.get_node("Sprite2D").texture = flower_data.texture  # Set flower texture
	flower_card.get_node("Label").text = flower_data.name  # Set flower name
	flower_card.flower_data = flower_data
	flower_card.index = index

	# Add the new card to the bottom (Panel automatically stacks children from top to bottom)
	self.add_child(flower_card)
	
	print("Added Flower Card:", flower_data.name)
