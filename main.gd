extends Node

@onready var cerdito_escena = preload("res://escenas/serdito.tscn")
#@onready GlobalVariables.map_root = self
@export var cerd_initial_pos: Vector2


#<emitting_node>.connect("signal_name", <target_node>, "target_method_name")
func _ready():
	GlobalVariables.map_root = self	


func spawn_cerdito():
	var cerdi_instance = cerdito_escena.instantiate()
	cerdi_instance.position = cerd_initial_pos
#	cerdi_instance.transform.x = cerd_initial_pos[0]
#	cerdi_instance.transform.y = cerd_initial_pos[1]
	call_deferred("add_child",cerdi_instance)
	#add_child(cerdi_instance)

func _on_lose():
	print("perdiste malito 2")
	spawn_cerdito()

func _on_win():
	print("ganaste cuajado")
	spawn_cerdito()
