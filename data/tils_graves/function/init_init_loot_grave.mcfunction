function tils_graves:init_loot_grave with entity @n[tag=tils_graves.deathPos] data

advancement revoke @s only tils_graves:interaction

execute if predicate {condition:"minecraft:random_chance",chance:0.01} run function tils_graves:quality_guy
