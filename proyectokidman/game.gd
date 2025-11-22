extends CharacterBody2D
var velocidad = 400

@onready var anim = $AnimatedSprite2D

func _process(delta):
	var movio = false
	
	if Input.is_action_pressed("MoverIzquierda"):
		position.x -= velocidad * delta
		anim.play("izquierda")
		movio = true
	
	elif Input.is_action_pressed("MoverDerecha"):
		position.x += velocidad * delta
		anim.play("derecha")
		movio = true
	
	# Si no se presiona nada → idle
	if not movio:
		anim.play("idle")
	
	# Limitar a los bordes
	var pantalla_ancho = get_viewport_rect().size.x
	if position.x < 0:
		position.x = 0
	elif position.x > pantalla_ancho:
		position.x = pantalla_ancho
