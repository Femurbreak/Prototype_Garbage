extends Node

var points = 0
var time = 0
var timer_on = false

@onready var points_label = %PointsLabel
@onready var GarbageCan = %Garbage_Can
@onready var Timer_Label = %TimerLabel

var garbageBag = preload("res://Scenes/garbage_bag.tscn")

func add_point():
	if(timer_on == true):
		points += 1
		print(points)
		points_label.text = "Points: " + str(points) 

func instGarbageBag():
	var instance = garbageBag.instantiate()
	instance.position = Vector2(-448,274)
	add_child(instance)

func _process(delta):
	if(timer_on == true):
		time += delta
		print(time)
		Timer_Label.text = "Time: " + str(time)
	if(time >= 10):
		timer_on = false

#func _ready():
	# instGarbageBag()
	# add_point()
	# GarbageCan.game_manager = self


func _on_start_button_pressed():
	timer_on = true
	points = 0
	time = 0
