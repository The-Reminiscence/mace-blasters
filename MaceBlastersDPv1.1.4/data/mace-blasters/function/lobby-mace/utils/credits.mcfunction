# Esta función se encarga de dar respuesta a todos los armor stands que hay en el lobby.
# This function is responsible for responding to all the armor stands in the lobby.

# -------------------------------------------------------------------------------------------

execute as @e[type=minecraft:interaction, tag=shirowh_,nbt={attack:{}}] on attacker run playsound minecraft:block.enchantment_table.use master @s 1004 1 996 0.7
execute as @e[type=minecraft:interaction, tag=shirowh_,nbt={attack:{}}] on attacker run tellraw @s [{"translate":"shirowh_cr","with":[{"translate":"shirowh_cr.1","color":"dark_aqua",bold:true},{"translate":"shirowh_cr.2","color":"dark_purple", bold: false}]}]

data remove entity @e[type=minecraft:interaction, tag=shirowh_,limit=1] attack

# ---------------

execute as @e[type=minecraft:interaction, tag=vorticepen,nbt={attack:{}}] on attacker run playsound minecraft:block.enchantment_table.use master @s 1004 -1 1005 0.7
execute as @e[type=minecraft:interaction, tag=vorticepen,nbt={attack:{}}] on attacker run tellraw @s [{"translate":"vorti_cr","with":[{"translate":"vorti_cr.1","color":"yellow",bold:true},{"translate":"vorti_cr.2","color":"dark_purple", bold: false}]}]

data remove entity @e[type=minecraft:interaction, tag=vorticepen,limit=1] attack

# ---------------

execute as @e[type=minecraft:interaction, tag=Angel,nbt={attack:{}}] on attacker run playsound minecraft:block.enchantment_table.use master @s 1004 1 999 0.7
execute as @e[type=minecraft:interaction, tag=Angel,nbt={attack:{}}] on attacker run tellraw @s [{"translate":"angel_cr","with":[{"translate":"angel_cr.1","color":"blue",bold:true},{"translate":"angel_cr.2","color":"dark_purple", bold: false}]}]

data remove entity @e[type=minecraft:interaction, tag=Angel,limit=1] attack

# ---------------

execute as @e[type=minecraft:interaction, tag=testers,nbt={attack:{}}] on attacker run playsound minecraft:block.enchantment_table.use master @s 1004 1 1002 0.7
execute as @e[type=minecraft:interaction, tag=testers,nbt={attack:{}}] on attacker run tellraw @s [{"text":"\n\n\n\n\n"},{"bold":true,"color":"gray","text":"                          BETA TESTERS\n"},{"text":"\n"},{"color":"dark_purple","italic":false,"text":"           Dalox02, vorticepen, Shirowh_, Dealsur, Phavern,\n              4321boom4321, Sophia001, addy119, NBJake,\n                              Alpheyy, Ray_Pult_"},{"text":"\n\n\n"}]

data remove entity @e[type=minecraft:interaction, tag=testers,limit=1] attack

# ----------------

execute as @e[type=minecraft:interaction, tag=informacion,nbt={attack:{}}] on attacker run playsound minecraft:block.enchantment_table.use master @s 994 -1 998 0.7
execute as @e[type=minecraft:interaction, tag=informacion,nbt={attack:{}}] on attacker run tellraw @s [{"translate":"map_info","with":[{"translate":"map_info.1","color":"gray",bold:true},{"translate":"map_info.2","color":"#D48B2C", bold: true},{"translate":"map_info.3","color":"#D08F3E", bold: true},{"translate":"map_info.4", "color": "#CC944F", bold: true},{"translate":"map_info.5","color":"#C89861", bold: true},{"translate":"map_info.6", "color": "#C49C72", bold: true},{"translate":"map_info.7","color":"#C0A184", bold: true},{"translate":"map_info.8","color": "#BCA596", bold: true},{"translate":"map_info.9","color":"#B7A9A7", bold: true},{"translate":"map_info.10","color":"#B3AEB9", bold: true},{"translate":"map_info.11","color":"#AFB2CA", bold: true},{"translate":"map_info.12","color":"#ABB6DC", bold: true},{"translate":"map_info.13","color":"#A3BFFF", bold: true},{"translate":"map_info.14"},{"translate":"map_info.15","color":"green"},{"translate":"map_info.16"},{"translate":"map_info.17", bold: true},{"translate":"map_info.18"},{"translate":"map_info.19",italic:true},{"translate":"map_info.20","color":"dark_purple",bold:true},{"translate":"map_info.21","color":"gray", bold: true},{"translate":"map_info.22"},{"translate":"map_info.23","color":"green"},{"translate":"map_info.24"},{"translate":"map_info.25",bold: true},{"translate":"map_info.26"},{"translate":"map_info.27",italic:true},{"translate":"map_info.28","color":"dark_purple",bold:true},{"translate":"map_info.29"}]}]
data remove entity @e[type=minecraft:interaction, tag=informacion,limit=1] attack

# ----------------

execute as @e[type=minecraft:interaction, tag=agradecimientos,nbt={attack:{}}] on attacker run playsound minecraft:block.enchantment_table.use master @s 996 -1 996 0.7
execute as @e[type=minecraft:interaction, tag=agradecimientos,nbt={attack:{}}] on attacker run tellraw @s [{"translate":"greatings","with":[{"translate":"greatings.1","color":"white",bold:true},{"click_event":{"action":"open_url","url":"https://mcstacker.net"},"translate":"greatings.2","color":"dark_purple", bold: false},{"click_event":{"action":"open_url","url":"https://github.com/IoeCmcomc/MCDatapacker"},"translate":"greatings.3","color":"dark_purple", bold: false},{"click_event":{"action":"open_url","url":"https://minecraft-heads.com"},"translate":"greatings.4", "color": "dark_purple", bold: false},{"click_event":{"action":"open_url","url":"https://www.youtube.com/@ElRichMC"},"translate":"greatings.5","color":"dark_purple", bold: false},{"click_event":{"action":"open_url","url":"http://planetminecraft.com/member/zeroniaserver"},"translate":"greatings.6", "color": "dark_purple", bold: false},{"translate":"greatings.7", "color": "light_purple", bold: true},{"click_event":{"action":"open_url","url":"https://axiom.moulberry.com"},"translate":"greatings.8","color":"dark_purple", bold: false}]}]

data remove entity @e[type=minecraft:interaction, tag=agradecimientos,limit=1] attack

# ----------------

execute as @e[type=minecraft:interaction, tag=tr,nbt={attack:{}}] on attacker run tellraw @s [{"translate":"rrss","with":[{"translate":"rrss.1"},{"click_event":{"action":"open_url","url":"https://discord.gg/63NvSkcWrP"},"translate":"rrss.2","color":"#5662F6",bold:true},{"click_event":{"action":"open_url","url":"https://www.twitch.tv/TheReminiscenceMC"},"translate":"rrss.3","color":"#944DFF", bold: true},{"click_event":{"action":"open_url","url":"https://x.com/ReminiscenceMC"},"translate":"rrss.4", "color": "#1DA1f2", bold: true},{"translate":"rrss.5",italic:true},{"translate":"rrss.6"},{"translate":"rrss.7",italic:true}]}]
execute as @e[type=minecraft:interaction, tag=tr,nbt={attack:{}}] on attacker run particle minecraft:flame 985 2 1000 0.5 0.5 0.5 0.1 20 force
execute as @e[type=minecraft:interaction, tag=tr,nbt={attack:{}}] on attacker run particle minecraft:small_flame 985 2 1000 0.3 0.3 0.3 0.1 5 force
execute as @e[type=minecraft:interaction, tag=tr,nbt={attack:{}}] on attacker run playsound minecraft:block.chain.break master @s 985 2 1000 0.6

data remove entity @e[type=minecraft:interaction,tag=tr,limit=1] attack

# ----------------

execute as @e[type=minecraft:interaction, tag=reload_in,nbt={attack:{}}] on attacker run playsound minecraft:block.note_block.pling master @a 996 0 1004 0.5 2
execute as @e[type=minecraft:interaction, tag=reload_in,nbt={attack:{}}] on attacker run function mace-blasters:lobby-mace/utils/refresh
execute as @e[type=minecraft:interaction, tag=reload_in,nbt={attack:{}}] on attacker run title @s actionbar [{"translate":"reload_fb","with":[{"translate":"reload_fb.1","color":"white"},{"translate":"reload_fb.2","color":"gold"},{"translate":"reload_fb.3","color":"dark_aqua"},{"translate":"reload_fb.4", "color": "white"},{"translate":"reload_fb.5","color":"white"},{"translate":"reload_fb.6", "color": "white"}]}]

data remove entity @e[type=minecraft:interaction, tag=reload_in,limit=1] attack