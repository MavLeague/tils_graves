execute if entity @s[gamemode=!creative,gamemode=!spectator] at @s run function tils_graves:create_grave with entity @s

execute unless entity @s[gamemode=!creative,gamemode=!spectator] run scoreboard players reset @s tils_graves.death

# Death location Message
tellraw @s {translate:"tils_graves.death_location",with:[{nbt:"LastDeathLocation.pos[0]",entity:"@s"},{nbt:"LastDeathLocation.pos[1]",entity:"@s"},{nbt:"LastDeathLocation.pos[2]",entity:"@s"},{nbt:"LastDeathLocation.dimension",entity:"@s",interpret:true}],fallback:"Your Death Location is X:%s Y:%s Z:%s Dimension: %s"}

# Quality Controll Message
execute if predicate {condition:"minecraft:random_chance",chance:0.001} run function tils_graves:quality_guy
