# Esta función gestiona cosas relacionadas con el lobby, como asegurarse que estén en aventura, dar regeneración (solo en el lobby), saturación (siempre), las partículas...
# This function manages things related to the lobby, such as making sure they are in adventure, giving regeneration (only in the lobby), saturation (always), the particles...

execute as @a at @s[x=981,y=-13,z=972,dx=26,dy=32,dz=58] run effect give @s minecraft:regeneration 1 10 true

execute as @a[team=no] at @s[x=981,y=-13,z=972,dx=26,dy=32,dz=58] run gamemode adventure @s
execute as @a[team=sparks] at @s[x=981,y=-13,z=972,dx=26,dy=32,dz=58] run gamemode adventure @s
execute as @a[team=clouds] at @s[x=981,y=-13,z=972,dx=26,dy=32,dz=58] run gamemode adventure @s

execute as @a[team=clouds] at @s[x=981,y=-13,z=972,dx=26,dy=32,dz=58] run particle minecraft:trial_spawner_detection_ominous 1000 -3 992 1 0 1 0.1 8 force
execute as @a[team=sparks] at @s[x=981,y=-13,z=972,dx=26,dy=32,dz=58] run particle minecraft:trial_spawner_detection_ominous 1000 -3 992 1 0 1 0.1 8 force
execute as @a[team=no] at @s[x=981,y=-13,z=972,dx=26,dy=32,dz=58] run particle minecraft:trial_spawner_detection_ominous 1000 -3 992 1 0 1 0.1 8 force

execute as @a[team=clouds] at @s[x=981,y=-13,z=972,dx=26,dy=32,dz=58] run particle minecraft:trial_spawner_detection 1000 -3 1009 1 0 1 0.1 8 force
execute as @a[team=sparks] at @s[x=981,y=-13,z=972,dx=26,dy=32,dz=58] run particle minecraft:trial_spawner_detection 1000 -3 1009 1 0 1 0.1 8 force
execute as @a[team=no] at @s[x=981,y=-13,z=972,dx=26,dy=32,dz=58] run particle minecraft:trial_spawner_detection 1000 -3 1009 1 0 1 0.1 8 force

execute as @a run effect give @s saturation 1 0 true

# Detectar jugadores nuevos // Detect new players
execute as @a unless score @s joined matches 1 run function mace-blasters:lobby-mace/utils/first_time

# NO MOVER EL LIBRO // Don't move the book :D
execute as @e[type=item] if items entity @s contents written_book run kill @s

 execute as @a if predicate mace-blasters:book-check unless items entity @s weapon.mainhand written_book run tag @s add fix_book
 execute as @a unless predicate mace-blasters:book-check run tag @s add fix_book
 execute as @a[tag=fix_book] run clear @s minecraft:written_book
 execute as @a[tag=fix_book] run item replace entity @s weapon.mainhand from block 992 0 1004 container.8
 tag @a[tag=fix_book] remove fix_book
 