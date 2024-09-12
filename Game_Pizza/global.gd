extends Node

var position_player = 0
var position_inimigo = 0

var dano_inimigo = 15
var pausar_tudo = false

var inimigos = 0
var player_vida = 20
var player_vida_max = 20
var dano_player = 0

var tempo_tiro = 0.5

var xp = 0
var xp_max = 10
var coin = 0
var nivel = 0

var arma_giro_nivel = 0
var iniciar_jogo = false

var visible_cartas = true
var reset_timer = false
var wave = 1
var ponto = 0

func _physics_process(delta):
	
	if xp >= xp_max:
		nivel += 1
		xp = 0
		xp_max = xp_max + 20
	
	dano_player = int(randf_range(10, 25))
