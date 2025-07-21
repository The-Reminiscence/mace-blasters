# Segunda línea de la secuencia de comienzo, coloca los titulos en pantalla y suena el pling a ambos equipos, programa la siguiente. // 2nd line of the start sequence, place the titles on the screen and sound the pling to both teams, schedule the next.

title @a[tag=apto321] subtitle {"bold":true,"color":"gold","text":"2"}
playsound minecraft:block.note_block.pling master @a[team=clouds] 1030.53 19.00 973.66 100 1
playsound minecraft:block.note_block.pling master @a[team=sparks] 1030.52 19.00 1028.51 100 1

schedule function mace-blasters:core/cuenta_atras/starting1 1s