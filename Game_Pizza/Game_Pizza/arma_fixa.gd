extends Sprite2D

var bala = preload("res://bala.tscn")
var dir = 1
var pode_atirar = true
func _process(delta):
	var mouse_pos = get_global_mouse_position() #guardando a pos do mouse
	if mouse_pos.x > get_parent().position.x:
		flip_h = false
	else:
		flip_h = true
	look_at(mouse_pos) #fazendo a arma apontar para o mouse
	if $"../ProgressBar".value == $"../ProgressBar".max_value:
		pode_atirar = false
		await get_tree().create_timer(2.0).timeout
		$"../ProgressBar".value = 0
		pode_atirar = true
	if Global.pausar_tudo == false:
		if Input.is_action_pressed("mouse") and pode_atirar:
			$"../ProgressBar".value += 1
			rotation_degrees += randf_range(-5, 5) # recuo da arma
			var tiro = bala.instantiate()
			tiro.rotation = rotation #definindo a rotação da bala
			tiro.global_position = $Marker2D.global_position
			get_tree().get_root().add_child(tiro)
			
	

	
	



func _on_timer_timeout():
	$"../ProgressBar".value -= 1
