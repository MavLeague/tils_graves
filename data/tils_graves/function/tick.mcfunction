# create grave on death
execute if data storage tils_graves:data {active:true} as @a[scores={tils_graves.death=1..},gamemode=!creative, gamemode=!spectator] at @s run function tils_graves:create_grave with entity @s

execute as @a[scores={tils_graves.death=1..},gamemode=!survival, gamemode=!adventure] run scoreboard players reset @s tils_graves.death

#execute at @e[tag=tils_graves.deathPos] run particle portal ~ ~ ~ 0.0 0.0 0.0 0.1 2 normal

# loot graves
execute as @e[type=interaction,tag=tils_graves.interaction] at @s if data entity @s interaction \
run function tils_graves:init_loot_grave with entity @n[tag=tils_graves.deathPos] data
