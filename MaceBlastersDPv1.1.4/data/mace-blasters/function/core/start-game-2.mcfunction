# Esta es la función que se encarga, en caso de que se den los requerimientos de empezar la partida o forzarla, de preparar el minijuego, prepara los scoreboards, prepara los jugadores para que puedan ver la cuenta atrás, los equipa, les da el efecto, les hace tp e inicia la secuencia de comienzo.
# This is the function that takes care, in case the requirements to start the game or force it, of preparing the mini-game, prepares the scoreboards, prepares the players so that they can see the countdown, equips them, gives them the effect, makes them tp and initiates the starting sequence.
function mace-blasters:core/cuenta_atras/block-start
scoreboard players set enjuego mace_blasters 1
scoreboard players reset @a contador_golpes
scoreboard players reset @a contador_golems
scoreboard objectives setdisplay sidebar contador_golpes

effect clear @a[team=clouds]
effect clear @a[team=sparks]
execute as @a[team=sparks] run clear @s minecraft:written_book 1
execute as @a[team=clouds] run clear @s minecraft:written_book 1
effect give @a[team=sparks] instant_health 1 255 true
effect give @a[team=clouds] instant_health 1 255 true
tag @a[team=clouds] add apto321
tag @a[team=sparks] add apto321
gamemode adventure @a[team=sparks]
gamemode adventure @a[team=clouds]
effect give @a[team=clouds] minecraft:glowing infinite 10 true
effect give @a[team=sparks] minecraft:glowing infinite 10 true
item replace entity @a[team=clouds] armor.head from block 992 0 1004 container.0
item replace entity @a[team=clouds] armor.chest from block 992 0 1004 container.1
item replace entity @a[team=clouds] armor.legs from block 992 0 1004 container.2
item replace entity @a[team=clouds] armor.feet from block 992 0 1004 container.3
item replace entity @a[team=clouds] weapon.mainhand from block 992 0 1004 container.4
item replace entity @a[team=clouds] weapon.offhand from block 992 0 1004 container.5
item replace entity @a[team=sparks] armor.head from block 992 0 1004 container.9
item replace entity @a[team=sparks] armor.chest from block 992 0 1004 container.10
item replace entity @a[team=sparks] armor.legs from block 992 0 1004 container.11
item replace entity @a[team=sparks] armor.feet from block 992 0 1004 container.12
item replace entity @a[team=sparks] weapon.mainhand from block 992 0 1004 container.4
item replace entity @a[team=sparks] weapon.offhand from block 992 0 1004 container.5

tp @a[team=sparks] 1030.50 19.00 1027.5 -180 0
tp @a[team=clouds] 1030.5 19 974.5 0 0

schedule function mace-blasters:core/cuenta_atras/starting 1t