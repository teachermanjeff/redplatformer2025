extends CanvasLayer

var score = 0
var time = 40


# Called when the node enters the scene tree for the first time.
func _ready():
	$scorelabel.text = "score:" + str(score)
	$TimeLeft.text = "Time:" + str(time)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$scorelabel.text = "score:" + str(score)


func _on_timer_timeout():
	time -= 1
	$TimeLeft.text = "Time:" + str(time)
	if time ==0:
		get_tree().reload_current_scene()
