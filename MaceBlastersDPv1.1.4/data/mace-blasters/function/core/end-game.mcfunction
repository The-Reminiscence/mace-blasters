# Títulos y subtitulos por si gana un equipo u otro. // Titles and subtitles if one team or the other wins.
execute unless score team_naranja mace_blasters matches 0 run title @a title [{"translate":"spa_win_t","with":[{"translate":"spa_win_t.1","color":"#D19F2C", bold: true},{"translate":"spa_win_t.2", "color": "#D4A533", bold: true},{"translate":"spa_win_t.3","color":"#D7AA39", bold: true},{"translate":"spa_win_t.4","color": "#DAB040", bold: true},{"translate":"spa_win_t.5","color":"#DDB546", bold: true},{"translate":"spa_win_t.6","color":"#E0BB4D", bold: true},{"translate":"spa_win_t.7","color":"#E2C053", bold: true},{"translate":"spa_win_t.8","color":"#E5C559", bold: true},{"translate":"spa_win_t.9","color":"#E8CB60", bold: true},{"translate":"spa_win_t.10","color":"#EBD066", bold: true},{"translate":"spa_win_t.11","color":"dark_aqua", bold: true}]}]
execute unless score team_naranja mace_blasters matches 0 run title @a subtitle [{"translate":"win_s","with":[{"translate":"win_s.1","color":"#FFC261", bold: true},{"translate":"win_s.2", "color": "#FFC769", bold: true},{"translate":"win_s.3","color":"#FFCB71", bold: true},{"translate":"win_s.4","color": "#FFCF7A", bold: true},{"translate":"win_s.5","color":"#FFC261", bold: true},{"translate":"win_s.6","color":"#FFC769", bold: true},{"translate":"win_s.7", "color": "#FFCB71", bold: true},{"translate":"win_s.8","color":"#FFCF7A", bold: true},{"translate":"win_s.9","color": "#FFCF7A", bold: true}]}]
execute unless score team_azul mace_blasters matches 0 run title @a title [{"translate":"sky_win_t","with":[{"translate":"sky_win_t.1","color":"#4854FF", bold: true},{"translate":"sky_win_t.2", "color": "#4D5AFF", bold: true},{"translate":"sky_win_t.3","color":"#5260FF", bold: true},{"translate":"sky_win_t.4","color": "#5765FF", bold: true},{"translate":"sky_win_t.5","color":"#5C6BFF", bold: true},{"translate":"sky_win_t.6","color":"#6070FF", bold: true},{"translate":"sky_win_t.7","color":"#6576FF", bold: true},{"translate":"sky_win_t.8","color":"#6A7BFF", bold: true},{"translate":"sky_win_t.9","color":"#6F81FF", bold: true},{"translate":"sky_win_t.10","color":"#7487FF", bold: true},{"translate":"sky_win_t.11","color":"#798CFF", bold: true},{"translate":"sky_win_t.12","color":"#7D92FF", bold: true},{"translate":"sky_win_t.13","color":"#879DFF", bold: true},{"translate":"sky_win_t.14","color":"white", bold: false},{"translate":"sky_win_t.15","color":"gold",bold:true}]}]
execute unless score team_azul mace_blasters matches 0 run title @a subtitle [{"translate":"win_s","with":[{"translate":"win_s.1","color":"#7D98FF", bold: true},{"translate":"win_s.2", "color": "#829DFF", bold: true},{"translate":"win_s.3","color":"#87A2FF", bold: true},{"translate":"win_s.4","color": "#8BA6FF", bold: true},{"translate":"win_s.5","color":"#7D98FF", bold: true},{"translate":"win_s.6","color":"#829DFF", bold: true},{"translate":"win_s.7", "color": "#87A2FF", bold: true},{"translate":"win_s.8","color":"#8BA6FF", bold: true},{"translate":"win_s.9","color": "#8BA6FF", bold: true}]}]

# Mueve a los iron golems y los mata (los muevo para que no hagan ruido al morir, que es bastante si quedan muchos en el mapa) y dejo de programar que aparezcan más //  Move the iron golems and kill them (I move them so they don't make noise when they die, which is quite a lot if there are many left on the map) and stop scheduling more to appear.
tp @e[tag=iron_boost] 10324 -72 997
kill @e[tag=iron_boost]
execute as @a run schedule clear mace-blasters:core/golem_modifier/wind_golem

# Todos los jugadores vuelven al lobby, los espectadores salen del modo espectador, se eliminan todos los items, se quitan los equipos y efectos. //  All players return to the lobby, spectators exit spectator mode, all items are removed, equipment and effects are removed.
tp @a[team=sparks] 1000.48 0 1001.1 -90 0.1
tp @a[team=clouds] 1000.48 0 1001.1 -90 0.1
clear @a[team=sparks]
clear @a[team=clouds]
tag @a[team=spectator] add exitendgame
team join no @a[team=sparks]
team join no @a[team=clouds]
effect clear @a

# Se reinician los scoreboards necesarios. // The required scoreboards are reset.
scoreboard players set enjuego mace_blasters 0
scoreboard players reset * golems_golpeados
scoreboard players reset * contador_golpes
scoreboard objectives setdisplay sidebar