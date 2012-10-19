require "~/LPP/Pract5/lib/clase_ppt"

tirada_j = (ARGV.shift || '')

@mano = Ppt.new()
@mano.juego_j(tirada_j)
@mano.juego_m
@mano.partida
