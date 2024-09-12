extends Sprite2D

var bala = preload("res://bala.tscn")
var dir = 1
var pode_atirar = true
func _process(delta):
	var mouse_pos = get_global_mouse_position() #guardando a pos do mouse
	if mouse_pos.x > get_parent().position.x:
		flip_v = false
	else:
		flip_v = true
	look_at(mouse_pos) #fazendo a arma apontar para o mouse

	if Global.pausar_tudo == false :
		if Input.is_action_pressed("mouse") and pode_atirar:
			rotation_degrees += randf_range(-5, 5) # recuo da arma
			var tiro = bala.instantiate()
			tiro.rotation = rotation #definindo a rotação da bala
			tiro.global_position = $Marker2D.global_position
			get_tree().get_root().add_child(tiro)
			pode_atirar = false
			await get_tree().create_timer(0.6).timeout
			pode_atirar = true

