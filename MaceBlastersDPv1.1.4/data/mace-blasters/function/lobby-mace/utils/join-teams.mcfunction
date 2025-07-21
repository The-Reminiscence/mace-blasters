# ----------UNIRSE A CLOUDS / JOIN CLOUDS (Clouds es/is Skyreapers)------------

# Al tener la tag sky te da el sonido, texto y tp y te quita la tag para que no lo haga en bucle, también se asegura que no te puedas unir a un equipo cuando una partida ha comenzado.
# Having the sky tag gives you the sound, text and tp and removes the tag so it doesn't loop, it also makes sure you can't join a team when a game has started.
execute as @a[team=no] at @s[x=998,y=-4,z=990,dx=3,dy=2,dz=3] run tag @s add sky
execute if score enjuego mace_blasters matches 0 run execute as @a[tag=sky] run playsound minecraft:block.note_block.bell master @s 1000 0 1000 100
execute if score enjuego mace_blasters matches 0 run execute as @a[tag=sky] run tellraw @s [{"translate":"team.join_sky","with":[{"translate":"team.join_sky.1","color":"dark_aqua"},{"translate":"team.join_sky.2","color":"yellow", underlined: true,italic:true},{"translate":"team.join_sky.3","color":"dark_aqua"},{"translate":"team.join_sky.4","color":"dark_aqua",bold:true},{"translate":"team.join_sky.5","color":"dark_aqua"},{"translate":"team.join_sky.6","color":"yellow"},{"translate":"team.join_sky.7","color":"dark_aqua"},{"translate":"team.join_sky.8","color":"yellow",italic:true,underlined:true},{"translate":"team.join_sky.9","color":"dark_aqua"},{"translate":"team.join_sky.10","color":"dark_aqua"}]},{"translate":"team.note","with":[{"translate":"team.note.1","color":"gray"},{"translate":"team.note.2","color":"gray"}]}]
execute if score enjuego mace_blasters matches 0 run execute as @a[tag=sky] run execute as @s run team join clouds
execute if score enjuego mace_blasters matches 0 run execute as @a[tag=sky] run tp @s 1000.48 0 1001.1 -90 0.1
execute if score enjuego mace_blasters matches 0 run execute as @a[tag=sky] run tag @s remove sky
execute if score enjuego mace_blasters matches 1 run execute as @a[tag=sky] run tp @s 1000.48 0 1001.1 -90 0.1
execute if score enjuego mace_blasters matches 1 run execute as @a[tag=sky] run tellraw @s [{"translate":"team.ongoing_game","with":[{"translate":"team.ongoing_game.1","color":"red"},{"translate":"team.ongoing_game.2","color":"red"}]}]
execute if score enjuego mace_blasters matches 1 run execute as @a[tag=sky] run tag @s remove sky

# Interacción especial cuando entras en el pod de SKYREAPERS y estás en el equipo SKYREAPERS, basicamente te da la tag nsky. Al tener la tag nsky te da el sonido, texto, te hace tp y te quita de SKYREAPERS a "Sin Equipo", luego te quita la tag para evitar bucles.
# Special interaction when you enter the SKYREAPERS pod and you are in the SKYREAPERS team, basically it gives you the nsky tag. Having the nsky tag gives you the sound, text, makes you tp and removes you from SKYREAPERS to “No Team”, then removes the tag to avoid loops.
execute as @a[team=clouds] at @s[x=998,y=-4,z=990,dx=3,dy=2,dz=3] run tag @s add nsky
execute as @a if entity @s[tag=nsky] run tellraw @s [{"translate":"team.exit_sky","with":[{"translate":"team.exit_sky.1","color":"dark_aqua"},{"translate":"team.exit_sky.2","color":"yellow", underlined: true,italic:true},{"translate":"team.exit_sky.3","color":"dark_aqua"},{"translate":"team.exit_sky.4","color":"dark_aqua",bold:true},{"translate":"team.exit_sky.5","color":"dark_aqua"},{"translate":"team.exit_sky.6","color":"yellow"},{"translate":"team.exit_sky.7","color":"dark_aqua"},{"translate":"team.exit_sky.8","color":"yellow",italic:true,underlined:true},{"translate":"team.exit_sky.9","color":"dark_aqua"},{"translate":"team.exit_sky.10","color":"dark_aqua"}]}]
execute as @a if entity @s[tag=nsky] run tp @s 1000.48 0 1001.1 -90 0.1
execute as @a if entity @s[tag=nsky] run playsound minecraft:block.note_block.bass master @s 1000 0 1000 100
execute as @a if entity @s[tag=nsky] run execute as @s run team join no
execute as @a if entity @s[tag=nsky] run tag @s remove nsky

# Interacción especial si entras en el pod de SKYREAPERS y eres del equipo SPARKS, la TRAICIÓN. te da la tag sk (sparK to Skyreapers). Al tener la tag sk te da los sonidos, el texto, el tp y te mete en el equipo contrario, luego te quita la tag para evitar bucles.
# Special interaction if you enter the SKYREAPERS pod and you are from the SPARKS team, the TRAITION. it gives you the tag sk (sparK to Skyreapers). Having the tag sk gives you the sounds, the text, the tp and puts you in the opposing team, then removes the tag to avoid loops.
execute as @a[team=sparks] at @s[x=998,y=-4,z=990,dx=3,dy=2,dz=3] run tag @s add sk
execute as @a if entity @s[tag=sk] run tellraw @s [{"translate":"team.join_sky","with":[{"translate":"team.join_sky.1","color":"dark_aqua"},{"translate":"team.join_sky.2","color":"yellow", underlined: true,italic:true},{"translate":"team.join_sky.3","color":"dark_aqua"},{"translate":"team.join_sky.4","color":"dark_aqua",bold:true},{"translate":"team.join_sky.5","color":"dark_aqua"},{"translate":"team.join_sky.6","color":"yellow"},{"translate":"team.join_sky.7","color":"dark_aqua"},{"translate":"team.join_sky.8","color":"yellow",italic:true,underlined:true},{"translate":"team.join_sky.9","color":"dark_aqua"},{"translate":"team.join_sky.10","color":"dark_aqua"}]},{"translate":"team.traitor","with":[{"translate":"team.traitor.1","color":"gold"},{"translate":"team.traitor.2","color":"gold"}]},{"translate":"team.note","with":[{"translate":"team.note.1","color":"gray"},{"translate":"team.note.2","color":"gray"}]}]
execute as @a if entity @s[tag=sk] run tp @s 1000.48 0 1001.1 -90 0.1
execute as @a if entity @s[tag=sk] run playsound minecraft:entity.evoker.prepare_wololo master @s 1000 0 1000 100
execute as @a if entity @s[tag=sk] run playsound minecraft:block.note_block.bass master @s 1000 0 1000 100
execute as @a if entity @s[tag=sk] run execute as @s run team join clouds
execute as @a if entity @s[tag=sk] run tag @s remove sk

# ---------- UNIRSE A SPARKS / JOIN SPARKS ------------

# Al tener la tag spa te da el sonido, texto y tp y te quita la tag para que no lo haga en bucle, también se asegura que no te puedas unir a un equipo cuando una partida ha comenzado.
# Having the spa tag gives you the sound, text and tp and removes the tag so it doesn't loop, it also makes sure you can't join a team when a game has started.
execute as @a[team=no] at @s[x=998,y=-4,z=1007,dx=3,dy=2,dz=3] run tag @s add spa
execute if score enjuego mace_blasters matches 0 run execute as @a[tag=spa] run playsound minecraft:block.note_block.bell master @s 1000 0 1000 100
execute if score enjuego mace_blasters matches 0 run execute as @a[tag=spa] run tellraw @s [{"translate":"team.join_spa","with":[{"translate":"team.join_spa.1","color":"gold"},{"translate":"team.join_spa.2","color":"aqua", underlined: true,italic:true},{"translate":"team.join_spa.3","color":"gold"},{"translate":"team.join_spa.4","color":"gold",bold:true},{"translate":"team.join_spa.5","color":"gold"},{"translate":"team.join_spa.6","color":"aqua"},{"translate":"team.join_spa.7","color":"gold"},{"translate":"team.join_spa.8","color":"aqua",italic:true,underlined:true},{"translate":"team.join_spa.9","color":"gold"},{"translate":"team.join_spa.10","color":"gold"}]},{"translate":"team.note","with":[{"translate":"team.note.1","color":"gray"},{"translate":"team.note.2","color":"gray"}]}]
execute if score enjuego mace_blasters matches 0 run execute as @a[tag=spa] run execute as @s run team join sparks
execute if score enjuego mace_blasters matches 0 run execute as @a[tag=spa] run tp @s 1000.48 0 1001.1 -90 0.1
execute if score enjuego mace_blasters matches 0 run execute as @a[tag=spa] run tag @s remove spa
execute if score enjuego mace_blasters matches 1 run execute as @a[tag=spa] run tp @s 1000.48 0 1001.1 -90 0.1
execute if score enjuego mace_blasters matches 1 run execute as @a[tag=spa] run tellraw @s [{"translate":"team.ongoing_game","with":[{"translate":"team.ongoing_game.1","color":"red"},{"translate":"team.ongoing_game.2","color":"red"}]}]
execute if score enjuego mace_blasters matches 1 run execute as @a[tag=spa] run tag @s remove spa

# Interacción especial cuando entras en el pod de SPARK y estás en el equipo SPARK, basicamente te da la tag nspa, Al tener la tag nspa te da el sonido, texto, te hace tp y te quita de SPARK a "Sin Equipo", luego te quita la tag para evitar bucles.
# Special interaction when you enter the SPARK pod and you are in the SPARK team, basically it gives you the nspa tag, Having the nspa tag gives you the sound, text, makes you tp and removes you from SPARK to "No Team", then removes the tag to avoid loops.
execute as @a[team=sparks] at @s[x=998,y=-4,z=1007,dx=3,dy=2,dz=3] run tag @s add nspa
execute as @a if entity @s[tag=nspa] run tellraw @s [{"translate":"team.exit_spa","with":[{"translate":"team.exit_spa.1","color":"gold"},{"translate":"team.exit_spa.2","color":"aqua", underlined: true,italic:true},{"translate":"team.exit_spa.3","color":"gold"},{"translate":"team.exit_spa.4","color":"gold",bold:true},{"translate":"team.exit_spa.5","color":"gold"},{"translate":"team.exit_spa.6","color":"aqua"},{"translate":"team.exit_spa.7","color":"gold"},{"translate":"team.exit_spa.8","color":"aqua",italic:true,underlined:true},{"translate":"team.exit_spa.9","color":"gold"},{"translate":"team.exit_spa.10","color":"gold"}]}]
execute as @a if entity @s[tag=nspa] run tp @s 1000.48 0 1001.1 -90 0.1
execute as @a if entity @s[tag=nspa] run playsound minecraft:block.note_block.bass master @s 1000 0 1000 100
execute as @a if entity @s[tag=nspa] run execute as @s run team join no
execute as @a if entity @s[tag=nspa] run tag @s remove nspa

# Interacción especial si entras en el pod de SKYREAPERS y eres del equipo SPARKS, la TRAICIÓN. te da la tag sk (Skyreapers to sparK). Al tener la tag ks te da los sonidos, el texto, el tp y te mete en el equipo contrario, luego te quita la tag para evitar bucles.
# Special interaction if you enter the SKYREAPERS pod and you are from the SPARKS team, the TRAITION. it gives you the tag sk (Skyreapers to sparK). Having the ks tag gives you the sounds, the text, the tp and puts you in the opposite team, then removes the tag to avoid loops.
execute as @a[team=clouds] at @s[x=998,y=-4,z=1007,dx=3,dy=2,dz=3] run tag @s add ks
execute as @a if entity @s[tag=ks] run tellraw @s [{"translate":"team.join_spa","with":[{"translate":"team.join_spa.1","color":"gold"},{"translate":"team.join_spa.2","color":"aqua", underlined: true,italic:true},{"translate":"team.join_spa.3","color":"gold"},{"translate":"team.join_spa.4","color":"gold",bold:true},{"translate":"team.join_spa.5","color":"gold"},{"translate":"team.join_spa.6","color":"aqua"},{"translate":"team.join_spa.7","color":"gold"},{"translate":"team.join_spa.8","color":"aqua",italic:true,underlined:true},{"translate":"team.join_spa.9","color":"gold"},{"translate":"team.join_spa.10","color":"gold"}]},{"translate":"team.traitor","with":[{"translate":"team.traitor.1","color":"aqua"},{"translate":"team.traitor.2","color":"aqua"}]},{"translate":"team.note","with":[{"translate":"team.note.1","color":"gray"},{"translate":"team.note.2","color":"gray"}]}]
execute as @a if entity @s[tag=ks] run tp @s 1000.48 0 1001.1 -90 0.1
execute as @a if entity @s[tag=ks] run playsound minecraft:entity.evoker.prepare_wololo master @s 1000 0 1000 100
execute as @a if entity @s[tag=ks] run playsound minecraft:block.note_block.bass master @s 1000 0 1000 100
execute as @a if entity @s[tag=ks] run execute as @s run team join sparks
execute as @a if entity @s[tag=ks] run tag @s remove ks