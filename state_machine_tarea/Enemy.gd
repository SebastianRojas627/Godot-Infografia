extends KinematicBody2D

var speed = 100
var accel = 4

onready var state_machine = $AnimationTree.get("parameters/playback")
onready var timer = $Timer

func on_Timer_timeout():
	print("timeout")
	var duration = rand_range(3, 7)
	
	state_machine.travel("attack")
	timer.start(duration)


func _on_Timer_timeout():
	print("timeout")
	var duration = rand_range(3, 7)
	
	state_machine.travel("attack")
	timer.start(duration)
