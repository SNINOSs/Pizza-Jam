extends CanvasLayer

func _process(delta):
	$level_numero.text = str(Global.nivel)
	$Label2.text = str(Global.mortes_inimigos)


