# Esta función se encarga de enseñarte un pequeño ¡HOLA! la primera vez que entras. // This function is in charge of showing you a little HELLO! the first time you log in.

execute as @s if entity @s run title @s subtitle {"translate":"minigame_by"}
execute as @s if entity @s run title @s title [{"bold":true,"color":"#FF9933","text":"M"},{"bold":true,"color":"#F39D44","text":"A"},{"bold":true,"color":"#E7A155","text":"C"},{"bold":true,"color":"#DBA566","text":"E "},{"bold":true,"color":"#CFA977","text":"B"},{"bold":true,"color":"#C3AD88","text":"L"},{"bold":true,"color":"#B7B299","text":"A"},{"bold":true,"color":"#AAB6AA","text":"S"},{"bold":true,"color":"#9EBABB","text":"T"},{"bold":true,"color":"#92BECC","text":"E"},{"bold":true,"color":"#86C2DD","text":"R"},{"bold":true,"color":"#6ECAFF","text":"S"}]
execute as @s if entity @s run playsound minecraft:item.mace.smash_ground_heavy master @s -3.55 7.50 18.70 0.2
execute as @s if entity @s run playsound minecraft:entity.player.levelup master @s -3.55 7.50 18.70 0.2
execute as @s if entity @s run effect give @s minecraft:blindness 3 10 true
execute as @s if entity @s run effect give @s minecraft:blindness 4 255 true
execute as @s if entity @s run team join no
execute as @s if entity @s run title @s times 10t 2s 10t
execute as @s if entity @s run tellraw @s [{"text":"\n\n\n"},{"text":"¡Si el texto del lobby no está el tu idioma golpea el armor stand de recargar texto!\n\n"},"If the lobby text is not in your language hit the armor stand to reload text!",{"text":"\n\n "}]

scoreboard players set @s joined 1