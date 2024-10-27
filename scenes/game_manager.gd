extends Node

var score = 0
<<<<<<< Updated upstream
=======
@onready var score_label: Label = $ScoreLabel
>>>>>>> Stashed changes

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#score_label.text = "Collected: " + str(score)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func add_point():
	score += 1 
	score_label.text = "Your score is " + str(score)
	

func collect_trash():
	print("no")
