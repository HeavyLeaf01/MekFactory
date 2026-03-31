extends Control

func _ready():
	# Garante que o menu comece escondido
	hide()

func _input(event):
	if event.is_action_pressed("abrir_menu"):
		toggle_menu()

func toggle_menu():
	visible = !visible # Inverte a visibilidade
	
	# Opcional: Pausar o jogo enquanto o menu está aberto
	get_tree().paused = visible
	
	# Liberar ou prender o mouse
	if visible:
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	else:
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
