extends RigidBody2D

#@onready var barra = $conjunto
#@onready var goal = $goal
var goal
var barra

func ready():
	var _mapa = self.get_parent()
	#var sirculos = mapa.find_children(StaticBody2D)
	barra = $conjunto
	goal = $goal

func _on_visible_on_screen_enabler_2d_screen_exited() -> void:
	print("Y no fuimo")
	self.queue_free()
	GlobalVariables.map_root._on_lose()
