# spawn Grave Stone
summon marker ~ ~ ~ {Tags:["tils_graves","tils_graves.deathPos"],data:{Items:{},Xp:0,Owner:[I;0,0,0,0]}}

summon item_display ~ ~ ~ {NoGravity:1b,Silent:1b,Tags:["tils_graves","tils_graves.display"],Passengers:[{id:"minecraft:interaction",Tags:["tils_graves","tils_graves.interaction"],width:0.6f,height:0.6f}],item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;0,0,0,0]}}},transformation:{left_rotation:[0.5042262f,0.0f,0.0f,0.8635716f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.181875f,0.1875f],scale:[1f,1f,1f]}}

# Set Grave Contents
data modify entity @n[tag=tils_graves.deathPos] data.Items set from entity @s Inventory
data modify entity @n[tag=tils_graves.deathPos] data.Items append from entity @s equipment
clear @s

data modify entity @n[tag=tils_graves.deathPos] data.Xp set from entity @s XpTotal
xp add @s -2147483648

data modify entity @n[tag=tils_graves.deathPos] data.Owner set from entity @s UUID

data modify entity @n[tag=tils_graves.display] item.components.minecraft:profile.id set from entity @s UUID

# give deathpoint compass
$give @s minecraft:poisonous_potato[!consumable,item_model="tils_graves:grave_key",item_name="Grave Key",rarity="uncommon",minecraft:custom_data={tils_graves_compass:1b,tils_graves_owner:$(UUID)}]

# set decay time
execute store result score @n[tag=tils_graves.deathPos] tils_graves.days run time query day
scoreboard players operation @n[tag=tils_graves.deathPos] tils_graves.days += #decay tils_graves.days

# reset score
scoreboard players reset @s tils_graves.death
