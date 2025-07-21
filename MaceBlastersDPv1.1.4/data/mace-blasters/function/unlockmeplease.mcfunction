# Esta función es: Caos. Pero bueno, creo que reinicia todo bastante bien, perfecto por si algo se buguea o no funciona.
# This function is: Chaos. But well, I think it restarts everything pretty ok, perfect in case something is buggy or not working.

execute as @a if entity @s run tag @s remove sky 
execute as @a if entity @s run tag @s remove nsky 
execute as @a if entity @s run tag @s remove sk 
execute as @a if entity @s run tag @s remove spa
execute as @a if entity @s run tag @s remove nspa
execute as @a if entity @s run tag @s remove ks
execute as @a if entity @s run tag @s remove spectate
execute as @a if entity @s run tag @s remove spectatein
execute as @a if entity @s run tag @s remove cexitlava
execute as @a if entity @s run tag @s remove exitlava
execute as @a if entity @s run tag @s remove cexitslime
execute as @a if entity @s run tag @s remove exitslime
execute as @a if entity @s run tag @s remove jgame
execute as @a if entity @s run tag @s remove tpgame
execute as @a if entity @s run tag @s remove leavemg
execute as @a if entity @s run team join no
execute as @a if entity @s run gamemode adventure
tp @a 1000.48 0 1001.1 -90 0.1
execute as @a if entity @s run clear @s

tp @e[tag=iron_boost] 10324 -72 997
kill @e[tag=iron_boost]

execute as @a run schedule clear mace-blasters:core/golem_modifier/wind_golem

tp @a[team=sparks] 1000.48 0 1001.1 -90 0.1
tp @a[team=clouds] 1000.48 0 1001.1 -90 0.1
gamemode adventure @a
tag @a[team=spectator] add exitendgame
clear @a[team=sparks]
clear @a[team=clouds]
team join no @a[team=sparks]
team join no @a[team=clouds]
effect clear @a

scoreboard players reset * mostrado
scoreboard players set enjuego mace_blasters 0
scoreboard players reset * golems_golpeados
scoreboard players reset * contador_golpes
scoreboard objectives setdisplay sidebar
clear @a[team=no]
