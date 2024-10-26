extends Node

var score = 0
@onready var score_label = $Score_label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#score_label.text = "Collected: " + str(score)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func add_point():
	score += 1 
	score_label.text = "Collected: " + str(score)
	
