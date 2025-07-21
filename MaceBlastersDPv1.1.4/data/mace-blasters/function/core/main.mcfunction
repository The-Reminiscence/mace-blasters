# Gestiona los botones de la modalidad, 1v1, 2v2, 3v3, la información se recoge de un cartel escondido. Además hace sonido. // Manages the mode buttons, 1v1, 2v2, 3v3, the information is collected from a hidden sign. It also makes sound.
execute as @e[type=minecraft:interaction,tag=mb_team_subir_hb] on attacker unless score tamano_team mace_blasters matches 3.. run scoreboard players add tamano_team mace_blasters 1
execute as @e[type=minecraft:interaction,tag=mb_team_bajar_hb] on attacker unless score tamano_team mace_blasters matches ..1 run scoreboard players remove tamano_team mace_blasters 1
execute as @e[type=minecraft:interaction,tag=mb_team_bajar_hb] on attacker run playsound ui.button.click master @s 1003 2 1001 100 1
execute as @e[type=minecraft:interaction,tag=mb_team_subir_hb] on attacker run playsound ui.button.click master @s 1003 2 1001 100 1

data merge block 1001 -3 1001 {front_text:{messages:[[{"score":{"name":"tamano_team","objective":"mace_blasters"},"color":"aqua","bold":true},{"text":"v"},{"score":{"name":"tamano_team","objective":"mace_blasters"},"color":"aqua","bold":true}],"","",""]}}
data modify entity @e[tag=mb_team_tamano,limit=1] text set from block 1001 -3 1001 front_text.messages[0]

data remove entity @e[type=minecraft:interaction,tag=mb_team_subir_hb,limit=1] attack
data remove entity @e[type=minecraft:interaction,tag=mb_team_bajar_hb,limit=1] attack

# Gestiona el sonido y el botón de empezar partida. // Manages the sound and the start game button.

execute as @e[type=minecraft:interaction,tag=startgame] on attacker run function mace-blasters:core/start-game
execute as @e[type=minecraft:interaction,tag=startgame] on attacker run playsound entity.player.levelup master @s 1003 1 1001 50 2
data remove entity @e[type=minecraft:interaction,tag=startgame,limit=1] attack

# Si alguien muere, se ejecuta la función que gestiona que muera 1 jugador. //  If someone dies, the function that manages the death of 1 player is executed.

execute if score enjuego mace_blasters matches 1 as @a[scores={contador_muertes=1..}] run function mace-blasters:core/eliminar-jugador
scoreboard players reset @a[scores={contador_muertes=1..}] contador_muertes

# Aquí se gestionan los triggers, tanto para salir del modo espectador cuando pulsas [SI] como el de forzar terminar partida o forzar empezarla. // Here triggers are managed, both to exit spectator mode when you press [YES] and to force end game or force start game.

execute as @a[scores={salir_espectador=1..}] run tag @s add exitlava
execute as @a[scores={salir_espectador=1..}] run tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
scoreboard players set @a[scores={salir_espectador=1..}] salir_espectador 0

execute as @a[scores={salir_espectadors=1..}] run tag @s add exitslime
execute as @a[scores={salir_espectadors=1..}] run tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
scoreboard players set @a[scores={salir_espectadors=1..}] salir_espectadors 0

execute as @a[scores={force-salir_mg=1..}] run tag @s add exitslime
execute as @a[scores={force-salir_mg=1..}] run tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
scoreboard players set @a[scores={force_salir_mg=1..}] salir_espectadors 0

execute as @a[scores={force_start_mg=1..}] run schedule function mace-blasters:core/start-game-2 1t append
execute as @a[scores={force_start_mg=1..}] run tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
scoreboard players set @a[scores={force_start_mg=1..}] force_start_mg 0

execute as @a[scores={force_end_mg=1..}] run function mace-blasters:unlockmeplease
execute as @a[scores={force_end_mg=1..}] run tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
scoreboard players set @a[scores={force_end_mg=1..}] force_end_mg 0

scoreboard players enable @a salir_espectador
scoreboard players enable @a salir_espectadors
scoreboard players enable @a force_start_mg
scoreboard players enable @a force_end_mg

# Aquí se gestiona que en el scoreboard de golpes no se añadan los golpes dados a los golems, solo a los jugadores. //  Here it is managed so that in the scoreboard of hits the hits given to the golems are not added, only to the players.

execute as @a run scoreboard players operation @s contador_golpes -= @s golems_golpeados
execute as @a[scores={contador_golpes=..0}] run scoreboard players set @s contador_golpes 0
execute as @a run scoreboard players set @s golems_golpeados 0

# Si los jugadores están dentro del campo de batalla mantienen esta función ejecutada. //  If the players are inside the battlefield they keep this function executed.
execute if score enjuego mace_blasters matches 1 as @a[team=clouds] at @a[x=1008,y=-13,z=972,dx=44,dy=60,dz=57] run function mace-blasters:core/why_justwhy
execute if score enjuego mace_blasters matches 1 as @a[team=sparks] at @a[x=1008,y=-13,z=972,dx=44,dy=60,dz=57] run function mace-blasters:core/why_justwhy

execute if score enjuego mace_blasters matches 1 as @a[team=sparks] at @a[x=1008,y=-13,z=972,dx=44,dy=60,dz=57] run title @a[team=sparks] actionbar [{"translate":"spa.must_attack","with":[{"translate":"spa.must_attack.1","color":"gold",bold:false},{"translate":"spa.must_attack.2","color":"aqua", bold: false},{"translate":"spa.must_attack.3","color":"gold",bold:false},{"translate":"spa.must_attack.4","color":"gold", bold: false},{"translate":"spa.must_attack.5","color":"aqua",bold:false},{"translate":"spa.must_attack.6","color":"gold", bold: false}]}]
execute if score enjuego mace_blasters matches 1 as @a[team=clouds] at @a[x=1008,y=-13,z=972,dx=44,dy=60,dz=57] run title @a[team=clouds] actionbar [{"translate":"sky.must_attack","with":[{"translate":"sky.must_attack.1","color":"dark_aqua",bold:false},{"translate":"sky.must_attack.2","color":"gold", bold: false},{"translate":"sky.must_attack.3","color":"dark_aqua",bold:false},{"translate":"sky.must_attack.4","color":"dark_aqua", bold: false},{"translate":"sky.must_attack.5","color":"gold",bold:false},{"translate":"sky.must_attack.6","color":"dark_aqua", bold: false}]}]

# Evita que los jugadores se queden sin wind charges. // Prevents players from running out of wind charges.
execute as @a[scores={usar_carga_viento=1..},team=sparks] run item replace entity @s weapon.offhand with wind_charge[custom_name=[{"bold":true,"color":"#FFFFFF","text":"W"},{"color":"#EEEEEE","text":"i"},{"color":"#DEDEDE","text":"n"},{"color":"#CDCDCD","text":"d "},{"color":"#BCBCBC","text":"S"},{"color":"#ABABAB","text":"p"},{"color":"#9B9B9B","text":"h"},{"color":"#8A8A8A","text":"e"},{"color":"#797979","text":"r"},{"color":"#686868","text":"e"},{"color":"#474747","text":"s"}],unbreakable={}] 64
execute as @a[scores={usar_carga_viento=1..},team=clouds] run item replace entity @s weapon.offhand with wind_charge[custom_name=[{"bold":true,"color":"#FFFFFF","text":"W"},{"color":"#EEEEEE","text":"i"},{"color":"#DEDEDE","text":"n"},{"color":"#CDCDCD","text":"d "},{"color":"#BCBCBC","text":"S"},{"color":"#ABABAB","text":"p"},{"color":"#9B9B9B","text":"h"},{"color":"#8A8A8A","text":"e"},{"color":"#797979","text":"r"},{"color":"#686868","text":"e"},{"color":"#474747","text":"s"}],unbreakable={}] 64
scoreboard players reset @a[scores={usar_carga_viento=1..}] usar_carga_viento

# Si subes demasiado en el mapa se encarga de quitarte las wind charges, not fun allowed. //  If you go too high on the map it takes care of removing wind charges, not fun allowed.
execute as @a[x=1008,y=48,z=972,dx=44,dy=60,dz=57,team=clouds] run clear @s minecraft:wind_charge
execute as @a[x=1008,y=48,z=972,dx=44,dy=60,dz=57,team=sparks] run clear @s minecraft:wind_charge

# Esto se encarga de que bajo cualquier circunstancia, hay un problema de softlock, te da la opción para salir. // This takes care that under any circumstances, there is a softlock problem, it gives you the option to exit.
function mace-blasters:core/check_softlock