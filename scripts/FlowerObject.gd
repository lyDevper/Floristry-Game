extends Node2D

class_name FlowerObject

@export var data: FlowerData   # assign this in child scenes

func _ready():
	$Area2D.body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	if body.is_in_group("player"):
		bagManager.collect_flower(data)
		queue_free()
		#print(data.name, ' collided!')
		#print(data.semantics)
