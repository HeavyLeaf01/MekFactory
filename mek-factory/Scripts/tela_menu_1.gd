extends Control

func _ready():
	
	hide()

func _input(event):
	if event.is_action_pressed("Acao"):
		toggle_menu()

func toggle_menu():
	visible = !visible
	
	if visible:
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	else:
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
