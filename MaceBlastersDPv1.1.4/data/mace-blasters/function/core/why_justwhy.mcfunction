# Por qué? Simplemente... ¿Por qué? :(  Esta función se encarga de que de ninguna manera puedas tirar tus cosas, aún así no las cubre absolutamente todas #THX MOJANG...
# Why? Just... Why? :( This function makes sure that you can't throw away your stuff, but it still doesn't cover absolutely all of it #THX MOJANG...

execute as @e[type=item] if items entity @s contents wind_charge run kill @s

execute as @a unless predicate mace-blasters:wind-charge-check run item replace entity @s[team=clouds] weapon.offhand with wind_charge[custom_name=[{"bold":true,"color":"#FFFFFF","text":"W"},{"color":"#EEEEEE","text":"i"},{"color":"#DEDEDE","text":"n"},{"color":"#CDCDCD","text":"d "},{"color":"#BCBCBC","text":"S"},{"color":"#ABABAB","text":"p"},{"color":"#9B9B9B","text":"h"},{"color":"#8A8A8A","text":"e"},{"color":"#797979","text":"r"},{"color":"#686868","text":"e"},{"color":"#474747","text":"s"}],unbreakable={}] 64
execute if predicate mace-blasters:wind-charge-check run tag @s[team=clouds] add fix_wind
execute as @a[tag=fix_wind] run clear @s[team=sparks] minecraft:wind_charge
execute as @a[tag=fix_wind] run item replace entity @s[team=clouds] weapon.offhand with wind_charge[custom_name=[{"bold":true,"color":"#FFFFFF","text":"W"},{"color":"#EEEEEE","text":"i"},{"color":"#DEDEDE","text":"n"},{"color":"#CDCDCD","text":"d "},{"color":"#BCBCBC","text":"S"},{"color":"#ABABAB","text":"p"},{"color":"#9B9B9B","text":"h"},{"color":"#8A8A8A","text":"e"},{"color":"#797979","text":"r"},{"color":"#686868","text":"e"},{"color":"#474747","text":"s"}],unbreakable={}] 64
tag @a[tag=fix_wind] remove fix_wind

execute as @a unless predicate mace-blasters:wind-charge-check run item replace entity @s[team=sparks] weapon.offhand with wind_charge[custom_name=[{"bold":true,"color":"#FFFFFF","text":"W"},{"color":"#EEEEEE","text":"i"},{"color":"#DEDEDE","text":"n"},{"color":"#CDCDCD","text":"d "},{"color":"#BCBCBC","text":"S"},{"color":"#ABABAB","text":"p"},{"color":"#9B9B9B","text":"h"},{"color":"#8A8A8A","text":"e"},{"color":"#797979","text":"r"},{"color":"#686868","text":"e"},{"color":"#474747","text":"s"}],unbreakable={}] 64
execute if predicate mace-blasters:wind-charge-check run tag @s[team=sparks] add fix_wind
execute as @a[tag=fix_wind] run clear @s[team=sparks] minecraft:wind_charge
execute as @a[tag=fix_wind] run item replace entity @s[team=sparks] weapon.offhand with wind_charge[custom_name=[{"bold":true,"color":"#FFFFFF","text":"W"},{"color":"#EEEEEE","text":"i"},{"color":"#DEDEDE","text":"n"},{"color":"#CDCDCD","text":"d "},{"color":"#BCBCBC","text":"S"},{"color":"#ABABAB","text":"p"},{"color":"#9B9B9B","text":"h"},{"color":"#8A8A8A","text":"e"},{"color":"#797979","text":"r"},{"color":"#686868","text":"e"},{"color":"#474747","text":"s"}],unbreakable={}] 64
tag @a[tag=fix_wind] remove fix_wind


execute as @e[type=item] if items entity @s contents mace run kill @s

 execute if predicate mace-blasters:mace-check unless items entity @s[team=clouds] weapon.mainhand mace run tag @s add fix_mace
 execute unless predicate mace-blasters:mace-check run tag @s[team=clouds] add fix_mace
 execute as @a[tag=fix_mace] run clear @s[team=clouds] minecraft:mace
 execute as @a[tag=fix_mace] run item replace entity @s[team=clouds] weapon.mainhand from block 992 0 1004 container.4
 tag @a[tag=fix_mace] remove fix_mace
 
 execute if predicate mace-blasters:mace-check unless items entity @s[team=sparks] weapon.mainhand mace run tag @s[team=sparks] add fix_mace
 execute unless predicate mace-blasters:mace-check run tag @s[team=sparks] add fix_mace
 execute as @a[tag=fix_mace] run clear @s[team=sparks] minecraft:mace
 execute as @a[tag=fix_mace] run item replace entity @s[team=sparks] weapon.mainhand from block 992 0 1004 container.4
 tag @a[tag=fix_mace] remove fix_mace