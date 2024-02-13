extends Node

var points = 0

@onready var points_label = %PointsLabel
@onready var GarbageCan = %Garbage_Can

var garbageBag = preload("res://Scenes/garbage_bag.tscn")

func add_point():
	points += 1
	print(points)
	points_label.text = "Points: " + str(points) 

func instGarbageBag():
	var instance = garbageBag.instantiate()
	instance.position = Vector2(-448,274)
	add_child(instance)

#func _ready():
	# instGarbageBag()
	# add_point()
	# GarbageCan.game_manager = self
