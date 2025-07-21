# Cuando un jugador muere, se le retira el inventario, se le añade la tag que gestiona el modo espectador, te saca del equipo y el core se encarga de que si los jugadores de un equipo llega a 0 termine la partida.
# When a player dies, his inventory is removed, the tag that manages the spectator mode is added, you are removed from the team and the core ensures that if a team's players reach 0 the game ends.

clear @s
tag @s add spectate_gm
team leave @s
execute store result score team_naranja mace_blasters if entity @a[team=sparks]
execute store result score team_azul mace_blasters if entity @a[team=clouds]

execute if score team_naranja mace_blasters matches 0 run function mace-blasters:core/end-game
execute if score team_azul mace_blasters matches 0 run function mace-blasters:core/end-game