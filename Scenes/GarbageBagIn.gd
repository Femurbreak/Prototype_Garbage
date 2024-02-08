extends Area2D

var points = 0



func _on_body_entered(body):
	points += 1
	print(points)
