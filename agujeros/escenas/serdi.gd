extends RigidBody2D


func _on_sirculo_body_entered(body):
	hide() # Player disappears after being hit.
	emit_signal("hit")
	print("perdiste malito")
	
