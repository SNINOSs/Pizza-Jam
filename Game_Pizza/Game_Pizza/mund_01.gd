extends Node2D



func _ready():
	Global.iniciar_jogo = true
	Global.player_vida = 20
	Global.player_vida_max = 20
	Global.xp = 0
	Global.xp_max = 30
	Global.numero_inimigos = 0
	Global.mortes_inimigos = 0
	Global.nivel = 0
	Global.arma_giro_nivel = 0
	Global.tempo_tiro = 0.5

func _process(delta):
	pass
		
		
		
