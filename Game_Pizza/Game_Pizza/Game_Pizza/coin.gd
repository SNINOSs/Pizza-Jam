extends Area2D

var entrou = false



func  _physics_process(delta):
	if Global.pausar_tudo == true:
		Global.coin += int(randf_range(5,20))
		queue_free()
	
	if entrou == true:
		position += (Global.position_player - position )
func _on_body_entered(body):
	if body.is_in_group("player"):
		Global.coin += int(randf_range(5,20))
		queue_free()


func _on_area_coleta_body_entered(body):
	if body.is_in_group("player"):
		entrou = true
		
