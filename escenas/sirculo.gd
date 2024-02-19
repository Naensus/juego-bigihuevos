extends Area2D

#var barra
#var cerdito
#signal lose
#@onready var cerdito_escena = preload("res://escenas/serdito.tscn")
#@export var cerd_initial_pos: Vector2

#func _ready():
#	var mapa = self.get_parent()
#	var sirculos = mapa.find_children(StaticBody2D)
#	barra = mapa.find_child("conjunto")
#	cerdito = mapa.find_child("serdito")

func _on_body_entered(body):
	print(self , "detectó algo")
	if body.is_in_group("Player") == true: 
			#body.get_tree().root._on_lose()
#			Esta mal porque root no es el nodo mas alto sino
#			un viewport del que dependen los nodos
			body.queue_free()
			GlobalVariables.map_root._on_lose()
			




