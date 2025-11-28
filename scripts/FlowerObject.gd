extends Node2D

class_name FlowerObject

@export var data: FlowerData   # assign this in child scenes

func _ready():
	$Area2D.body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	if body.is_in_group("player"):
		## player collision detected
		bagManager.collect_flower(data)
		$AnimationPlayer.play("fade_out")
		await $AnimationPlayer.animation_finished
		queue_free()
		#print(data.name, ' collided!')
		#print(data.semantics)
