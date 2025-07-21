# Esto es lo mismo que la función wind golems pero spawnea 20 iniciales, luego ya llama a la función recurrente que spawnea 6/15s. //  This is the same as the wind golems function but spawns initial 20s, then calls the recurring function which spawns 6/15s.
# Below the map there are some armor stands with the spawnpoint_ig tag, what this function does is to add the candidate tag to all the armor stands that do not have a golem 14 blocks above it (2 courtesy blocks just in case), of all those candidates 6 are given the selected tag and those selected spawn the golems, it is programmed to auto run every 15s.
tag @e[type=armor_stand,tag=spawnpoint_ig,tag=candidato] remove candidato
tag @e[type=armor_stand,tag=spawnpoint_ig,tag=seleccionado] remove seleccionado
execute as @e[type=armor_stand,tag=spawnpoint_ig] at @s unless entity @e[type=iron_golem,tag=iron_boost,dx=0,dy=14,dz=0] run tag @s add candidato
tag @e[type=armor_stand,tag=candidato,limit=20,sort=random] add seleccionado
execute at @e[type=armor_stand,tag=seleccionado] run summon iron_golem ~ ~12 ~ {HurtTime:1,DeathTime:1,DeathLootTable:"minecraft:empty_loot",NoAI:1b,Tags:["iron_boost"],CustomName:{"italic":true,"text":"PUNCH ME!"},active_effects:[{id:"minecraft:wind_charged",amplifier:5,duration:19999980,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:1}]}

schedule function mace-blasters:core/golem_modifier/wind_golem 15s