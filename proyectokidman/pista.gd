extends Sprite2D
var speed = 800  # píxeles por segundo

func _process(delta):
	position.y += speed * delta

	# Reinicia la posición cuando salga de la pantalla
	if position.y > 1080:  # ajusta según el tamaño de tu ventana
		position.y = -texture.get_height()
