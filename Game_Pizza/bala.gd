extends Area2D


var speed = 500
var inimigo_position

func _physics_process(delta):
	if Global.pausar_tudo == true:
		queue_free()
	position += (Vector2.RIGHT*speed).rotated(rotation) * delta 
	await get_tree().create_timer(0.3).timeout
	queue_free()
	


func _on_body_entered(body):
	if not is_in_group("player"):
		queue_free()


func _on_area_entered(area):
	if area.is_in_group("inimigo"):
		queue_free()
