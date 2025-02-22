execute store result score #day tils_graves.days run time query day

# if not decayed but their's a key
$execute if items entity @s weapon.* *[minecraft:custom_data~{tils_graves_compass:1b,tils_graves_owner:$(Owner)}] as @n[tag=tils_graves.deathPos] at @s if score @s tils_graves.days >= #day tils_graves.days run function tils_graves:loot_grave with entity @s data

#$execute on target if items entity @s weapon.* *[minecraft:custom_data~{tils_graves_compass:1b,tils_graves_owner:$(Owner)}] if score @n[tag=tils_graves.deathPos] tils_graves.days >= #day tils_graves.days run clear @s *[minecraft:custom_data~{tils_graves_compass:1b,tils_graves_owner:$(Owner)}]

# if their's no decay
execute as @n[tag=tils_graves.deathPos] at @s unless score @s tils_graves.days matches 0.. run function tils_graves:loot_grave with entity @s data

# if decayed
execute as @n[tag=tils_graves.deathPos] at @s if score @s tils_graves.days < #day tils_graves.days run function tils_graves:loot_grave with entity @s data


#data remove entity @s interaction
