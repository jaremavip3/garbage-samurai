extends Node2D

var rand_x
var rand_y

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	randomize()
	for i in range(50):
		var tree = preload("res://scenes/Tree.tscn").instantiate()
		
		rand_x = randi_range(-300, 400)
		rand_y = randi_range(-200, 200)
		tree.global_position = Vector2(rand_x, rand_y)
		add_child(tree)
		
	randomize()
	for i in range(20):
		var rock = preload("res://scenes/stone.tscn").instantiate()
		rand_x = randi_range(-300, 400)
		rand_y = randi_range(-200, 200)  
		rock.global_position = Vector2(rand_x, rand_y)
		add_child(rock)
		
	randomize()
	for i in range(40):
		var volcano_tree = preload("res://scenes/VolcanoTree.tscn").instantiate()
		rand_x = randi_range(-900, -350)
		rand_y = randi_range(-200, 350)
		volcano_tree.global_position = Vector2(rand_x, rand_y)
		add_child(volcano_tree)
		
		
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
