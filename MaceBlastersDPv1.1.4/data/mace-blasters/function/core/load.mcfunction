# En caso de que algo falte al cargar el datapack lo añade.

scoreboard objectives add mace_blasters dummy
execute unless score tamano_team mace_blasters matches -99.. run scoreboard players set tamano_team mace_blasters 0
scoreboard objectives add usar_carga_viento minecraft.used:minecraft.wind_charge
scoreboard objectives add contador_muertes deathCount
scoreboard objectives add contador_golpes minecraft.used:minecraft.mace [{"translate":"hit_count","with":[{"translate":"hit_count.1","color":"#56FF4A","bold":true},{"translate":"hit_count.2","color":"#5FFF55", "bold": true},{"translate":"hit_count.3","color":"#69FF60", "bold": true},{"translate":"hit_count.4", "color": "#72FF6B", "bold": true},{"translate":"hit_count.5","color":"#7BFF76", "bold": true},{"translate":"hit_count.6", "color": "#85FF81", "bold": true},{"translate":"hit_count.7","color":"#8EFF8C", "bold": true},{"translate":"hit_count.8","color": "#98FF97", "bold": true},{"translate":"hit_count.9","color":"#A1FFA2", "bold": true},{"translate":"hit_count.10","color":"#AAFFAD", "bold": true},{"translate":"hit_count.11","color":"#BDFFC3", "bold": true},{"translate":"hit_count.12","color":"#56FF4A","bold":true},{"translate":"hit_count.13","color":"#5FFF55", "bold": true},{"translate":"hit_count.14","color":"#69FF60", "bold": true},{"translate":"hit_count.15", "color": "#72FF6B", "bold": true},{"translate":"hit_count.16","color":"#7BFF76", "bold": true},{"translate":"hit_count.17", "color": "#85FF81", "bold": true},{"translate":"hit_count.18","color":"#8EFF8C", "bold": true},{"translate":"hit_count.19","color": "#98FF97", "bold": true},{"translate":"hit_count.20","color":"#A1FFA2", "bold": true},{"translate":"hit_count.21","color":"#AAFFAD", "bold": true},{"translate":"hit_count.22","color":"#BDFFC3", "bold": true},{"translate":"hit_count.23","color":"#BDFFC3", "bold": true}]}]
scoreboard objectives add salir_espectador trigger
scoreboard objectives add salir_espectadors trigger
scoreboard objectives add force_start_mg trigger
scoreboard objectives add golems_golpeados dummy
scoreboard objectives add joined dummy
scoreboard objectives add hambre dummy
scoreboard players enable @a salir_espectador
scoreboard players enable @a salir_espectadors
scoreboard objectives setdisplay list vida
scoreboard objectives add golems_presentes dummy