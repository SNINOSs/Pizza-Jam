extends Sprite2D

var bala = preload("res://bala.tscn")
var dir = 1
var pode_atirar = true
func _process(delta):
	pass


func _on_timer_timeout():
	if Global.pausar_tudo == false :
		if Global.inimigos > 0:
			rotation_degrees += randf_range(-5, 5) # recuo da arma
			var tiro = bala.instantiate()
			tiro.rotation = rotation #definindo a rotação da bala
			tiro.global_position = $Marker2D.global_position
			get_tree().get_root().add_child(tiro)
