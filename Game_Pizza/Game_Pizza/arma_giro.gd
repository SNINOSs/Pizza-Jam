extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotation -= 1.5 * delta
	if Global.arma_giro_nivel == 0:
		$direita.visible = false
		$Collision_direita.disabled = true
		
		$esquerda.visible = false
		$Collision_esquerda.disabled = true
		
		$cima.visible = false
		$Collision_cima.disabled = true
		
		$baixo.visible = false
		$Collision_baixo.disabled = true
	if Global.arma_giro_nivel == 1:
		$direita.visible = true
		$Collision_direita.disabled = false
		
		$esquerda.visible = false
		$Collision_esquerda.disabled = true
		
		$cima.visible = false
		$Collision_cima.disabled = true
		
		$baixo.visible = false
		$Collision_baixo.disabled = true
		
	if Global.arma_giro_nivel == 2:
		$direita.visible = true
		$Collision_direita.disabled = false
		
		$esquerda.visible = true
		$Collision_esquerda.disabled = false
		
		$cima.visible = false
		$Collision_cima.disabled = true
		
		$baixo.visible = false
		$Collision_baixo.disabled = true
		
	if Global.arma_giro_nivel == 3:
		$direita.visible = true
		$Collision_direita.disabled = false
		
		$esquerda.visible = true
		$Collision_esquerda.disabled = false
		
		$cima.visible = true
		$Collision_cima.disabled = false
		
		$baixo.visible = false
		$Collision_baixo.disabled = true
		
	if Global.arma_giro_nivel == 4:
		$direita.visible = true
		$Collision_direita.disabled = false
		
		$esquerda.visible = true
		$Collision_esquerda.disabled = false
		
		$cima.visible = true
		$Collision_cima.disabled = false
		
		$baixo.visible = true
		$Collision_baixo.disabled = false
		
	
	
