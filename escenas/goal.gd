extends Area2D

func _on_body_entered(body):
	print(self , "detectó algo")
	if body.is_in_group("Player") == true: 
			body.queue_free()
			GlobalVariables.map_root._on_win()
			
