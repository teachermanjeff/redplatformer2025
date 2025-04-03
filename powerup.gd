extends Area2D

var hit = false
# Called when the node enters the scene tree for the first time.


func _on_body_entered(body):
		if not hit:
			hit = true
			visible = false
			$sound2.play()
			body.move = 1200
			body.get_node("poweruptimer").start(5)
	


func _on_sound_2_finished():
	queue_free()
