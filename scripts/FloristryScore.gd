extends Node
class_name FloristryScore

var submitted_flowers: Array = []
var total_semantics := {
	"love": 0,
	"Healing": 0,
	"joy": 0,
	"memory": 0,
	"beauty": 0,
	"spiritual": 0,
}

func collect_flower(flower_data: FlowerData) -> void:
	submitted_flowers.append(flower_data)

	for key in flower_data.semantics.keys():
		total_semantics[key] += flower_data.semantics[key]

	print("Submitted:", flower_data.name)
	print("Totals:", total_semantics)
