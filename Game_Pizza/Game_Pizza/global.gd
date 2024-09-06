extends Node

var position_player = 0
var position_inimigo = 0

var dano_inimigo = 0
var numero_inimigos = 0
var mortes_inimigos = 0

var pausar_tudo = false

var areachoque_scaleX = 2
var areachoque_scaleY = 2
var habilitar_choque = true

var player_vida = 20
var player_vida_max = 20
var dano_player = 0

var tempo_tiro = 0.5

var xp = 0
var xp_max = 10
var nivel = 0

var arma_giro_nivel = 0


func _physics_process(delta):
	if xp >= xp_max:
		nivel += 1
		xp = 0
		xp_max = xp_max + 20
	dano_inimigo = int(randf_range(10, 40))
	dano_player = int(randf_range(10, 25))
