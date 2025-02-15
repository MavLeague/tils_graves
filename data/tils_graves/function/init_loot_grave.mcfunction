$execute on target if items entity @s weapon.* *[minecraft:custom_data~{tils_graves_compass:1b,tils_graves_owner:$(Owner)}] as @n[tag=tils_graves.deathPos] at @s run function tils_graves:loot_grave with entity @s data

$execute on target run clear @s *[minecraft:custom_data~{tils_graves_compass:1b,tils_graves_owner:$(Owner)}]

say check

data remove entity @s interaction