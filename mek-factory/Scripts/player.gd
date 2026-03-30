extends CharacterBody2D

const velocidade = 300.0

func _physics_process(delta):
	var direcao = Input.get_vector("Left", "Right", "Up", "Down")
	
	if direcao != Vector2.ZERO:
		velocity = direcao * velocidade
	else:
		velocity = velocity.move_toward(Vector2.ZERO, velocidade)
	move_and_slide()
