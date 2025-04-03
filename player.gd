extends CharacterBody2D


var move = 750
var grav = 35
var jmp = 1200

var bullet = preload("res://bullet.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("shoot"):
		$shootsound.play()
		var newbullet = bullet.instantiate()
		get_parent().add_child(newbullet)
		newbullet.position =  position
		if $Sprite2D.flip_h == true:
			newbullet.dir = -1
		else:
			newbullet.dir = 1
		
		
		
		
	move_and_slide()
	velocity.y = velocity.y + grav
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = -jmp
	if Input.is_action_pressed("left"):
		$Sprite2D.flip_h = true
		velocity.x = -move
	elif Input.is_action_pressed("right"):
		$Sprite2D.flip_h = false
		velocity.x = move
	else:
		velocity.x = 0
	
			


func _on_fall_body_entered(body):
	pass # Replace with function body.


func _on_poweruptimer_timeout():
	move = 750



func _on_jumptimer_timeout():
	jmp = 1100
	
	
