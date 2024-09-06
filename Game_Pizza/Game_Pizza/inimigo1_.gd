extends Area2D

var speed = 20

var player_position
var cristal_xp = preload("res://cristal_xp.tscn")
var vida = 40


func _process(delta):
	if Global.pausar_tudo == true:
		queue_free()
	if Global.pausar_tudo == false:
		Global.position_inimigo = position
		player_position = Global.position_player
		
		if position.distance_to(player_position) > 3:
			position += (Vector2.RIGHT*speed).rotated(rotation) * delta   
			look_at(player_position)
	if vida <= 0:
		var xp = cristal_xp.instantiate()
		xp.global_position = global_position
		get_tree().get_root().add_child(xp)
		Global.mortes_inimigos += 1
		queue_free()
	
func _on_timer_timeout():
	queue_free()


func _on_body_entered(body):
	if Global.pausar_tudo == false:
		if Global.numero_inimigos > 0:
			Global.numero_inimigos -= 1
	if body.is_in_group("tiro"):
		vida -= Global.dano_inimigo
		$Label.text = str(Global.dano_inimigo)
	if body.is_in_group("player"):
		queue_free()


func _on_area_entered(area):
	if Global.pausar_tudo == false:
		if Global.numero_inimigos > 0:
			Global.numero_inimigos -= 1
		if not area.is_in_group("inimigo") and not area.is_in_group("xp") and not area.is_in_group("player"):
			vida -= Global.dano_inimigo
			$Label.text = str(Global.dano_inimigo)
		if is_in_group("ArmaGiro"):
			vida -= Global.dano_inimigo
			$Label.text = str(Global.dano_inimigo)
			


func _on_timer_label_timeout():
	$Label.text = ""
