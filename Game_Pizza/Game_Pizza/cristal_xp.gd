extends Area2D

var entrou = false
var valor_xp = 1

func  _physics_process(delta):
	if Global.pausar_tudo == true:
		queue_free()
	if Global.nivel == 3:
		valor_xp = 2
	if Global.nivel == 6:
		valor_xp = 3
	if Global.nivel == 8:
		valor_xp = 4
	if entrou == true:
		position += (Global.position_player - position )
func _on_body_entered(body):
	if body.is_in_group("player"):
		Global.xp += valor_xp
		queue_free()


func _on_area_coleta_body_entered(body):
	if body.is_in_group("player"):
		entrou = true
		
