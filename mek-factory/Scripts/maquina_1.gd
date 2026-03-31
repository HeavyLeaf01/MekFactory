extends StaticBody2D

func _ready():
	$PopUp.visible = false
func _on_teste_proximidade_body_entered(body):
	if body.name == "Player": 
		$PopUp.visible = true
func _on_teste_proximidade_body_exited(body):
	if body.name == "Player":
		$PopUp.visible = false

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("Acao") and $PopUp.visible == true:
		pass
