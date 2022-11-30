extends Node

var placar1=0 
var placar2=11

func _ready():
	
	pass 
func _physics_process(delta):
	$placa1.text = str(placar1)
	$placa2.text = str(placar2)
	verificarSeAlterouPosicao()
	if placar2 == 0:
		get_tree().quit()
	pass
	
		

func _on_esquerda_body_entered(body):
	placar2 = placar2 -1
	verificarSeAlterouPosicao()
	print("Hit")
	pass # Replace with function body.


func _on_direita_body_entered(body):
	placar2 = placar2 -1
	verificarSeAlterouPosicao()
	print("Hit")
	pass # Replace with function body.


func _on_baixo_body_entered(body):
	placar2 = placar2 -1
	print("Hit")
	verificarSeAlterouPosicao()
	pass # Replace with function body.


func _on_cima_body_entered(body):
	placar2 = placar2 -1
	verificarSeAlterouPosicao()
	print("Hit")
	
	pass # Replace with function body.


func verificarSeAlterouPosicao():
	if  Input.is_action_just_pressed("ui_right"):
		placar1= placar1+1
	pass
		
	if  Input.is_action_just_pressed("ui_up"):
		placar1= placar1+1
	pass
	if  Input.is_action_just_pressed("ui_down"):
		placar1= placar1+1
	pass
		
	if  Input.is_action_just_pressed("ui_left"):
		placar1= placar1+1
	pass
