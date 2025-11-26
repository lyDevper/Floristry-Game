extends Resource
class_name FlowerData

@export var name: String
@export var subtype: String = ""  # optional (e.g. Red, White)
@export var semantics := {
	"love": 0,
	"purity": 0,
	"joy": 0,
	"memory": 0,
	"beauty": 0,
	"spiritual": 0,
}
