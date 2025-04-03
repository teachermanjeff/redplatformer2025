extends Area2D

var hit = false
# Called when the node enters the scene tree for the first time.


func _on_body_entered(body):
		if not hit:
			hit = true
			visible = false
			$sound1.play()
			body.jmp = 2500
			body.get_node("jumptimer").start(10)


func _on_sound_2_finished():
	queue_free()
