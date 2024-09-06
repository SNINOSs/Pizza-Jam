extends Area2D

var numero_ale1 = 1
var numero_ale2 = 1
var numero_ale3 = 1
var numero_ale4 = 1
var numero_ale5 = 1
var numero_ale6 = 1
var numero_ale7 = 1
var numero_ale8 = 1




var max_value = 0
var max_inimigo = 40

var bixo = preload("res://inimigo_1_.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.pausar_tudo == false:
		$Timer1.start(numero_ale1)
		$Timer2.start(numero_ale2)
		$Timer3.start(numero_ale3)
		$Timer4.start(numero_ale4)
		$Timer5.start(numero_ale5)
		$Timer6.start(numero_ale6)
		$Timer7.start(numero_ale7)
		$Timer8.start(numero_ale8)

		max_value = 5
	if Global.nivel == 3:
		max_value = 4
	if Global.nivel == 6:
		max_value = 3
	if Global.nivel == 8:
		max_value = 2
func _on_timer_1_timeout():
	if Global.pausar_tudo == false:
		if Global.numero_inimigos < max_inimigo :
			numero_ale1 = int(randf_range(2, max_value))
			$Timer1.start(numero_ale1)
			var inimigo = bixo.instantiate()
			inimigo.global_position = $"1".global_position
			get_tree().get_root().add_child(inimigo)
			Global.numero_inimigos += 1
func _on_timer_2_timeout():
	if Global.pausar_tudo == false:
		if Global.numero_inimigos < max_inimigo :
			numero_ale2 = int(randf_range(2, max_value))
			$Timer2.start(numero_ale2)
			var inimigo2 = bixo.instantiate()
			inimigo2.global_position = $"2".global_position
			get_tree().get_root().add_child(inimigo2)
			Global.numero_inimigos += 1
func _on_timer_3_timeout():
	if Global.pausar_tudo == false:
		if Global.numero_inimigos < max_inimigo :
			numero_ale3 = int(randf_range(2, max_value))
			$Timer3.start(numero_ale3)
			var inimigo3 = bixo.instantiate()
			inimigo3.global_position = $"3".global_position
			get_tree().get_root().add_child(inimigo3)
			Global.numero_inimigos += 1



func _on_timer_4_timeout():
	if Global.pausar_tudo == false:
		if Global.numero_inimigos < max_inimigo :
			numero_ale4 = int(randf_range(2, max_value))
			$Timer3.start(numero_ale4)
			var inimigo4 = bixo.instantiate()
			inimigo4.global_position = $"4".global_position
			get_tree().get_root().add_child(inimigo4)
			Global.numero_inimigos += 1


func _on_timer_5_timeout():
	if Global.pausar_tudo == false:
		if Global.numero_inimigos < max_inimigo :
			numero_ale5 = int(randf_range(2, max_value))
			$Timer5.start(numero_ale5)
			var inimigo5 = bixo.instantiate()
			inimigo5.global_position = $"5".global_position
			get_tree().get_root().add_child(inimigo5)
			Global.numero_inimigos += 1


func _on_timer_6_timeout():
	if Global.pausar_tudo == false:
		if Global.numero_inimigos < max_inimigo :
			numero_ale6 = int(randf_range(2, max_value))
			$Timer6.start(numero_ale6)
			var inimigo6 = bixo.instantiate()
			inimigo6.global_position = $"6".global_position
			get_tree().get_root().add_child(inimigo6)
			Global.numero_inimigos += 1


func _on_timer_7_timeout():
	if Global.pausar_tudo == false:
		if Global.numero_inimigos < max_inimigo :
			numero_ale7 = int(randf_range(2, max_value))
			$Timer7.start(numero_ale7)
			var inimigo7 = bixo.instantiate()
			inimigo7.global_position = $"7".global_position
			get_tree().get_root().add_child(inimigo7)
			Global.numero_inimigos += 1


func _on_timer_8_timeout():
	if Global.pausar_tudo == false:
		if Global.numero_inimigos < max_inimigo :
			numero_ale8 = int(randf_range(2, max_value))
			$Timer3.start(numero_ale8)
			var inimigo8 = bixo.instantiate()
			inimigo8.global_position = $"8".global_position
			get_tree().get_root().add_child(inimigo8)
			Global.numero_inimigos += 1
