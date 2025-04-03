extends Area2D

var hit = false
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

# gt the coin
func _on_body_entered(body):
	if not hit:
		hit = true
		visible = false
		$sound3.play()
		get_parent().get_parent().get_node("HUD").score +=1
	
	


func _on_audio_stream_player_finished():
	queue_free()

