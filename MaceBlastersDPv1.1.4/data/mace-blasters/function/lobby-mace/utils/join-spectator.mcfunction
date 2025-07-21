# Al entrar en el pod de espectar te pone la tag de spectate y ejecuta los comandos correspondientes. // When you enter the spectating pod you get the spectate tag and execute the corresponding commands.

execute as @a at @s[x=986,y=-4,z=1002,dx=2,dy=1,dz=2] run tag @s add spectate
execute as @a if entity @s[tag=spectate] run playsound minecraft:entity.enderman.teleport master @s 1030.47 30.12 1000.97 100
execute as @a if entity @s[tag=spectate] run tellraw @s [{"translate":"spectator_joined","with":[{"translate":"spectator_joined.1"},{"translate":"spectator_joined.2","color":"dark_purple", bold: true},{"translate":"spectator_joined.3"},{"translate":"spectator_joined.4", "color": "red", bold: true},{"translate":"spectator_joined.5"},{"translate":"spectator_joined.6", "color": "light_purple", italic: true},{"translate":"spectator_joined.7"},{"translate":"spectator_joined.8","color": "#FF8519",italic:true},{"translate":"spectator_joined.9"},{"translate":"spectator_joined.10","color":"green", italic: true},{"translate":"spectator_joined.11"},{"translate":"spectator_joined.12","color":"dark_purple", bold: true},{"translate":"spectator_joined.13"},{"translate":"spectator_joined.14","color":"red",bold:true},{"translate":"spectator_joined.15"},{"translate":"spectator_joined.16"},{"translate":"spectator_joined.17","color":"light_purple", italic: true},{"translate":"spectator_joined.18"},{"translate":"spectator_joined.19","color":"dark_purple",bold:true},{"translate":"spectator_joined.20","color":"dark_purple",bold:true}]}]
execute as @a if entity @s[tag=spectate] run execute as @s run team join spectator
execute as @a if entity @s[tag=spectate] run gamemode spectator
execute as @a if entity @s[tag=spectate] run tp @s 1030.47 30.12 1000.97 -90 90
execute as @a if entity @s[tag=spectate] run tag @s add apto321
execute as @a if entity @s[tag=spectate] run tag @s add spectatein
execute as @a if entity @s[tag=spectate] run tag @s remove spectate


# Sistema de no salirse del área en espectador. // System to not leave the area as a spectator.
# Pared Oeste // West wall
execute as @a at @s[x=1005,y=-13,z=971,dx=2,dy=332,dz=58,tag=spectatein] run playsound minecraft:entity.enderman.teleport master @s 1030.47 30.12 1000.97 100
execute as @a at @s[x=1005,y=-13,z=971,dx=2,dy=332,dz=58,tag=spectatein] run tellraw @s [{"translate":"out_of_bounds_spec","with":[{"translate":"out_of_bounds_spec.1","color":"red",bold:false},{"translate":"out_of_bounds_spec.2","color":"red", bold: false}]}]
execute as @a at @s[x=1005,y=-13,z=971,dx=2,dy=332,dz=58,tag=spectatein] run tp @s 1030.47 30.12 1000.97
# Pared Norte // North wall
execute as @a at @s[x=1007,y=-13,z=969,dx=45,dy=332,dz=2,tag=spectatein] run playsound minecraft:entity.enderman.teleport master @s 1030.47 30.12 1000.97 100
execute as @a at @s[x=1007,y=-13,z=969,dx=45,dy=332,dz=2,tag=spectatein] run tellraw @s [{"translate":"out_of_bounds_spec","with":[{"translate":"out_of_bounds_spec.1","color":"red",bold:false},{"translate":"out_of_bounds_spec.2","color":"red", bold: false}]}]
execute as @a at @s[x=1007,y=-13,z=969,dx=45,dy=332,dz=2,tag=spectatein] run tp @s 1030.47 30.12 1000.97
# Pared Este // East wall
execute as @a at @s[x=1053,y=-13,z=971,dx=2,dy=332,dz=58,tag=spectatein] run playsound minecraft:entity.enderman.teleport master @s 1030.47 30.12 1000.97 100
execute as @a at @s[x=1053,y=-13,z=971,dx=2,dy=332,dz=58,tag=spectatein] run tellraw @s [{"translate":"out_of_bounds_spec","with":[{"translate":"out_of_bounds_spec.1","color":"red",bold:false},{"translate":"out_of_bounds_spec.2","color":"red", bold: false}]}]
execute as @a at @s[x=1053,y=-13,z=971,dx=2,dy=332,dz=58,tag=spectatein] run tp @s 1030.47 30.12 1000.97
# Pared Sur // South wall
execute as @a at @s[x=1007,y=-13,z=1030,dx=45,dy=332,dz=2,tag=spectatein] run playsound minecraft:entity.enderman.teleport master @s 1030.47 30.12 1000.97 100
execute as @a at @s[x=1007,y=-13,z=1030,dx=45,dy=332,dz=2,tag=spectatein] run tellraw @s [{"translate":"out_of_bounds_spec","with":[{"translate":"out_of_bounds_spec.1","color":"red",bold:false},{"translate":"out_of_bounds_spec.2","color":"red", bold: false}]}]
execute as @a at @s[x=1007,y=-13,z=1030,dx=45,dy=332,dz=2,tag=spectatein] run tp @s 1030.47 30.12 1000.97
# Techo (por si acaso y tal)... // Roof (just in case you know)...
execute as @a at @s[x=1009,y=319,z=973,dx=45,dy=2,dz=58,tag=spectatein] run playsound minecraft:entity.enderman.teleport master @s 1030.47 30.12 1000.97 100
execute as @a at @s[x=1009,y=319,z=973,dx=45,dy=2,dz=58,tag=spectatein] run tellraw @s [{"translate":"out_of_bounds_spec","with":[{"translate":"out_of_bounds_spec.1","color":"red",bold:false},{"translate":"out_of_bounds_spec.2","color":"red", bold: false}]}]
execute as @a at @s[x=1009,y=319,z=973,dx=45,dy=2,dz=58,tag=spectatein] run tp @s 1030.47 30.12 1000.97



# Sistema para abandonar el modo espectador. El sistema diferencia entre salir entre el slime o salir por la lava, ya sabes... detallitos // System to leave the spectator mode. The system differentiates between exiting through the slime or exiting through the lava, you know... small details.
# Salir de espectador lava oeste // Leave spectator - west lava
execute as @a at @s[x=1009,y=-13,z=976,dx=2,dy=1,dz=57,tag=spectatein] run tag @s add cexitlava
# Salir de espectador lava norte // Leave spectator - north lava
execute as @a at @s[x=1009,y=-13,z=973,dx=44,dy=1,dz=1,tag=spectatein] run tag @s add cexitlava
# Salir de espectador lava este // Leave spectator - east lava
execute as @a at @s[x=1049,y=-13,z=976,dx=3,dy=1,dz=57,tag=spectatein] run tag @s add cexitlava
# Salir de espectador lava sur // Leave spectator - south lava
execute as @a at @s[x=1012,y=-13,z=1026,dx=36,dy=1,dz=2,tag=spectatein] run tag @s add cexitlava
# Salir espectador lava general // exit spectator lava (general):
execute as @a if entity @s[tag=cexitlava] run tellraw @s [{"translate":"exit.spectator_mode","with":[{"translate":"exit.spectator_mode.1"},{"translate":"exit.spectator_mode.2","color":"dark_purple", bold: true},{"translate":"exit.spectator_mode.3"},{"translate":"exit.spectator_mode.4"},{"click_event":{"action":"run_command","command":"trigger salir_espectador set 1"},"translate":"exit.spectator_mode.5","color":"green", bold: true},{"translate":"exit.spectator_mode.6"},{"translate":"exit.spectator_mode.7","color":"dark_purple", bold: true},{"translate":"exit.spectator_mode.8"},{"translate":"exit.spectator_mode.9"},{"click_event":{"action":"run_command","command":"trigger salir_espectador set 1"},"translate":"exit.spectator_mode.10", "color": "green", bold: true}]}]
execute as @a if entity @s[tag=cexitlava] run tp 1030.47 30.12 1000.97 
execute as @a if entity @s[tag=cexitlava] run tag @s remove cexitlava

# Salir de espectador slimes // Leave spectator - slime 
execute as @a at @s[x=1012,y=-13,z=976,dx=36,dy=2,dz=49,tag=spectatein] run tag @s add cexitslime
execute as @a if entity @s[tag=cexitslime] run tellraw @s [{"translate":"exit.spectator_mode","with":[{"translate":"exit.spectator_mode.1"},{"translate":"exit.spectator_mode.2","color":"dark_purple", bold: true},{"translate":"exit.spectator_mode.3"},{"translate":"exit.spectator_mode.4"},{"click_event":{"action":"run_command","command":"trigger salir_espectadors set 1"},"translate":"exit.spectator_mode.5","color":"green", bold: true},{"translate":"exit.spectator_mode.6"},{"translate":"exit.spectator_mode.7","color":"dark_purple", bold: true},{"translate":"exit.spectator_mode.8"},{"translate":"exit.spectator_mode.9"},{"click_event":{"action":"run_command","command":"trigger salir_espectadors set 1"},"translate":"exit.spectator_mode.10", "color": "green", bold: true}]}]
execute as @a if entity @s[tag=cexitslime] run tp 1030.47 30.12 1000.97 
execute as @a if entity @s[tag=cexitslime] run tag @s remove cexitslime

# Salir de espectador (lava): // Leave spectator (lava):
execute as @a if entity @s[tag=exitlava] run gamemode adventure
execute as @a if entity @s[tag=exitlava] run particle minecraft:lava 1000.48 0 1001.1 1 1 1 10 100 force
execute as @a if entity @s[tag=exitlava] run playsound minecraft:block.fire.extinguish master @s 1000.48 2 1001.1 100
execute as @a if entity @s[tag=exitlava] run team join no @s
execute as @a if entity @s[tag=exitlava] run tp @s 1000.48 0 1001.1 -90 0.1
# Salir de espextador (slime): // Leave spectator (slime):
execute as @a if entity @s[tag=exitslime] run gamemode adventure
execute as @a if entity @s[tag=exitslime] run particle minecraft:item_slime 1000.48 0 1001.1 1 1 1 10 100 force
execute as @a if entity @s[tag=exitslime] run playsound minecraft:block.slime_block.place master @s 1000.48 2 1001.1 100
execute as @a if entity @s[tag=exitslime] run playsound minecraft:entity.slime.squish master @s 1000.48 2 1001.1 100
execute as @a if entity @s[tag=exitslime] run team join no @s
execute as @a if entity @s[tag=exitslime] run tp @s 1000.48 0 1001.1 -90 0.1

# Entrar en espectador al morir en la partida // Join spectator when you die in the game
execute as @a if entity @s[tag=spectate_gm] run gamemode spectator
execute as @a if entity @s[tag=spectate_gm] run team join spectator @s
execute as @a if entity @s[tag=spectate_gm] run tp @s 1030.47 30.12 1000.97 -90 90
execute as @a if entity @s[tag=spectate_gm] run tellraw @s [{"text":"\n\n\n\n"},{"italic":true,"text":"              Has entrado en el "},{"bold":true,"color":"dark_purple","italic":true,"text":"modo espectador"},{"text":".\n\n"},"   Tienes ",{"italic":true,"text":"total libertad"},", pero ",{"bold":true,"color":"red","italic":true,"text":"no"}," podrás salir del ",{"color":"dark_green","text":"área de juego.","underlined":true},{"text":"\n\n"},"   Para ",{"bold":true,"text":"salir"}," del ",{"bold":true,"color":"dark_purple","italic":true,"text":"modo espectador"}," métete ",{"italic":true,"text":"dentro","underlined":true}," de la",{"color":"#FF8519","italic":true,"text":" lava "},"o el ",{"color":"green","italic":true,"text":"slime."},"\n\n"]
execute as @a if entity @s[tag=spectate_gm] run tag @s add spectatein
execute as @a if entity @s[tag=spectate_gm] run tag @s remove spectate_gm

# Forzar a los jugadores a salir del espectador cuando acaba la partida // Force spectators to leave spectating when the game ends.
execute as @a if entity @s[tag=exitendgame] run gamemode adventure
execute as @a if entity @s[tag=exitendgame] run particle minecraft:portal 1000.48 0 1001.1 1 1 1 2 30 force
execute as @a if entity @s[tag=exitendgame] run playsound minecraft:block.note_block.bass master @s 1000 0 1000 100 0.7
execute as @a if entity @s[tag=exitendgame] run playsound minecraft:block.decorated_pot.shatter master @s 1000 0 1000 100 1
execute as @a if entity @s[tag=exitendgame] run team join no @s
execute as @a if entity @s[tag=exitendgame] run tp @s 1000.48 0 1001.1 -90 0.1

# Reinicio de algunas tags // Reset some tags
execute as @a if entity @s[tag=exitlava] run tag @s remove spectatein
execute as @a if entity @s[tag=exitlava] run tag @s remove apto321
execute as @a if entity @s[tag=exitlava] run tag @s remove exitlava
execute as @a if entity @s[tag=exitslime] run tag @s remove spectatein
execute as @a if entity @s[tag=exitslime] run tag @s remove apto321
execute as @a if entity @s[tag=exitslime] run tag @s remove exitslime
execute as @a if entity @s[tag=exitendgame] run tag @s remove spectatein
execute as @a if entity @s[tag=exitendgame] run tag @s remove apto321
execute as @a if entity @s[tag=exitendgame] run tag @s remove exitendgame