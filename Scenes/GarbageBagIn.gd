extends Area2D

#@onready var game_manager = %GameManager
# @onready var garbage_can = %Garbage_Can
#var game_manager

func _ready():
	print_tree()

func _on_body_entered(body):
	print("in the can")
	body.queue_free()
	#game_manager.instGarbageBag() 
	#game_manager.add_point()
	# garbage_can.callManager()
	get_node("../../GameManager").add_point()
	get_node("../../GameManager").instGarbageBag()
