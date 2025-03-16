execute if entity @s[gamemode=!creative,gamemode=!spectator] at @s run function tils_graves:create_grave with entity @s

execute unless entity @s[gamemode=!creative,gamemode=!spectator] run scoreboard players reset @s tils_graves.death
