# if it can't be opened: message
scoreboard players set #days_remaining tils_graves.days 0
scoreboard players operation #days_remaining tils_graves.days = @n[tag=tils_graves.deathPos] tils_graves.days
scoreboard players operation #days_remaining tils_graves.days -= #day tils_graves.days
execute unless items entity @s weapon.* *[minecraft:custom_data~{tils_graves_compass:1b}] if score @n[tag=tils_graves.deathPos] tils_graves.days > #day tils_graves.days run title @s actionbar {"translate":"demo.remainingTime","with":[{"translate":"gui.days","with":[{"score":{"name":"#days_remaining","objective":"tils_graves.days"}}]}]}
