extends RigidBody2D

@onready var cerdo = $serdito

func _on_sirculo_body_entered(body):
	if body == cerdo:
		cerdo.hide() # Player disappears after being hit.
		emit_signal("hit")
		print("perdiste malito")
	
