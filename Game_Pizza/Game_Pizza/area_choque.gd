extends Area2D



func _process(delta):

	$CollisionShape2D.disabled = Global.habilitar_choque
	$CollisionShape2D.scale.x = Global.areachoque_scaleX 
	$CollisionShape2D.scale.y = Global.areachoque_scaleY


