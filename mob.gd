extends RigidBody2D	

func _ready():
	var mob_types = Array($AnimatedSprite2D.sprite_frames.get_animation_name())
	$AnimatedSprite2D.animation = mob_types.pick_random()	
	
func _screen_exited():
	VisibleOnScreenNotifier2D
	
func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
