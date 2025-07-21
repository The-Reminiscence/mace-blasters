# Última linea de la secuencia, establece los tiempos otra vez, pone el título y quita el subtitulo anterior, te quita la tag, suenan los ultimos indicadores de sonido y programa liberar los jugadores y dar comienzo a que aparezcan golems. // Last line of the sequence, set the timings again, set the title and remove the previous subtitle, remove the tag, sound the last sound indicators and program to release the players and start the golems to appear.

execute as @a[tag=apto321] run title @s times 2t 1s 5t
title @a[tag=apto321] title {"translate":"starting_go","color":"green","bold":true}
title @a[tag=apto321] subtitle {"bold":true,"color":"green","text":""}
tag @a remove apto321
playsound minecraft:block.note_block.pling master @a[team=clouds] 1030.53 19.00 973.66 100 2
playsound minecraft:block.note_block.pling master @a[team=sparks] 1030.52 19.00 1028.51 100 2
playsound minecraft:entity.ender_dragon.ambient master @a[team=clouds] 1030.47 30.12 1000.97 20 2
playsound minecraft:entity.ender_dragon.ambient master @a[team=sparks] 1030.47 30.12 1000.97 20 2
schedule function mace-blasters:core/golem_modifier/wind_golem_start 1s
function mace-blasters:core/cuenta_atras/unlock-start