extends Area2D

var speed = 50

var player_position
var coin = preload("res://coin.tscn")
var vida = 40
var num = 0


func _ready():
	num = randf_range(1,10)
	Global.inimigos += 1
	

func _process(delta):
	if num <= 5:
		$anim1.visible = false
		$anim2.visible = true
		$anim1.play("idle")
	if num > 5:
		$anim1.visible = true
		$anim2.visible = false
		$anim2.play("idle")
	
	
	if Global.pausar_tudo == true:
		queue_free()
	if Global.pausar_tudo == false:
		Global.position_inimigo = position
		player_position = Global.position_player
		
		if position.distance_to(player_position) > 3:
			var dir = position.direction_to(player_position)
			position += dir * speed * delta
			if position.x <= player_position.x:
				$anim1.flip_h = false
				$anim2.flip_h = false
			else:
				$anim1.flip_h = true
				$anim2.flip_h = true
			#position += (Vector2.RIGHT*speed).rotated(rotation) * delta   
			#look_at(player_position)
	if vida <= 0:
		var moeda = coin.instantiate()
		moeda.global_position = global_position
		get_tree().get_root().add_child(moeda)
		Global.xp += randf_range(1,10)
		queue_free()
		Global.inimigos -= 1
		
	
func _on_timer_timeout():
	queue_free()
	Global.inimigos -= 1


func _on_body_entered(body):
	if Global.pausar_tudo == false:
		if body.is_in_group("tiro"):
			vida -= Global.dano_inimigo
			$Label.text = str(Global.dano_inimigo)
		if body.is_in_group("player"):
			queue_free()
			Global.inimigos -= 1


func _on_area_entered(area):
	if Global.pausar_tudo == false:
		if not area.is_in_group("inimigo") and not area.is_in_group("xp") and not area.is_in_group("player"):
			vida -= Global.dano_inimigo
			$Label.text = str(Global.dano_inimigo)
		if is_in_group("ArmaGiro"):
			vida -= Global.dano_inimigo
			$Label.text = str(Global.dano_inimigo)
			


func _on_timer_label_timeout():
	$Label.text = ""
