# drop majority of the items
$execute if score @n[tag=tils_graves.deathPos] tils_graves.days >= #day tils_graves.days run clear @p[nbt={UUID:$(Owner)}] *[minecraft:custom_data~{tils_graves_compass:1b,tils_graves_owner:$(Owner)}] 1

summon chest_minecart ~ ~ ~ {Tags:["tils_graves","tils_graves.Items1"],Items:[]}

data modify entity @n[tag=tils_graves.Items1] Items set from entity @s data.Items


# dropping missing item slots manually
summon chest_minecart ~ ~ ~ {Tags:["tils_graves","tils_graves.Items2"],Items:[]}
summon item_display ~ ~ ~ {Tags:["tils_graves","tils_graves.DummyItem"]}

execute store success storage tils_graves:data save_item byte 1 run data modify entity @n[tag=tils_graves.DummyItem] item set from entity @s data.Items[{Slot:27b}]
execute if data storage tils_graves:data {save_item:1b} run item replace entity @n[tag=tils_graves.Items2] container.0 from entity @n[tag=tils_graves.DummyItem] contents

execute store success storage tils_graves:data save_item byte 1 run data modify entity @n[tag=tils_graves.DummyItem] item set from entity @s data.Items[{Slot:28b}]
execute if data storage tils_graves:data {save_item:1b} run item replace entity @n[tag=tils_graves.Items2] container.1 from entity @n[tag=tils_graves.DummyItem] contents

execute store success storage tils_graves:data save_item byte 1 run data modify entity @n[tag=tils_graves.DummyItem] item set from entity @s data.Items[{Slot:29b}]
execute if data storage tils_graves:data {save_item:1b} run item replace entity @n[tag=tils_graves.Items2] container.2 from entity @n[tag=tils_graves.DummyItem] contents

execute store success storage tils_graves:data save_item byte 1 run data modify entity @n[tag=tils_graves.DummyItem] item set from entity @s data.Items[{Slot:30b}]
execute if data storage tils_graves:data {save_item:1b} run item replace entity @n[tag=tils_graves.Items2] container.3 from entity @n[tag=tils_graves.DummyItem] contents

execute store success storage tils_graves:data save_item byte 1 run data modify entity @n[tag=tils_graves.DummyItem] item set from entity @s data.Items[{Slot:31b}]
execute if data storage tils_graves:data {save_item:1b} run item replace entity @n[tag=tils_graves.Items2] container.4 from entity @n[tag=tils_graves.DummyItem] contents

execute store success storage tils_graves:data save_item byte 1 run data modify entity @n[tag=tils_graves.DummyItem] item set from entity @s data.Items[{Slot:32b}]
execute if data storage tils_graves:data {save_item:1b} run item replace entity @n[tag=tils_graves.Items2] container.5 from entity @n[tag=tils_graves.DummyItem] contents

execute store success storage tils_graves:data save_item byte 1 run data modify entity @n[tag=tils_graves.DummyItem] item set from entity @s data.Items[{Slot:33b}]
execute if data storage tils_graves:data {save_item:1b} run item replace entity @n[tag=tils_graves.Items2] container.6 from entity @n[tag=tils_graves.DummyItem] contents

execute store success storage tils_graves:data save_item byte 1 run data modify entity @n[tag=tils_graves.DummyItem] item set from entity @s data.Items[{Slot:34b}]
execute if data storage tils_graves:data {save_item:1b} run item replace entity @n[tag=tils_graves.Items2] container.7 from entity @n[tag=tils_graves.DummyItem] contents

execute store success storage tils_graves:data save_item byte 1 run data modify entity @n[tag=tils_graves.DummyItem] item set from entity @s data.Items[{Slot:35b}]
execute if data storage tils_graves:data {save_item:1b} run item replace entity @n[tag=tils_graves.Items2] container.8 from entity @n[tag=tils_graves.DummyItem] contents

# Offhand
execute store success storage tils_graves:data save_item byte 1 run data modify entity @n[tag=tils_graves.DummyItem] item set from entity @s data.Items[{Slot:-106b}]
execute if data storage tils_graves:data {save_item:1b} run item replace entity @n[tag=tils_graves.Items2] container.9 from entity @n[tag=tils_graves.DummyItem] contents
# Boots
execute store success storage tils_graves:data save_item byte 1 run data modify entity @n[tag=tils_graves.DummyItem] item set from entity @s data.Items[{Slot:100b}]
execute if data storage tils_graves:data {save_item:1b} run item replace entity @n[tag=tils_graves.Items2] container.10 from entity @n[tag=tils_graves.DummyItem] contents
# Leggins
execute store success storage tils_graves:data save_item byte 1 run data modify entity @n[tag=tils_graves.DummyItem] item set from entity @s data.Items[{Slot:101b}]
execute if data storage tils_graves:data {save_item:1b} run item replace entity @n[tag=tils_graves.Items2] container.11 from entity @n[tag=tils_graves.DummyItem] contents
# Chestplate
execute store success storage tils_graves:data save_item byte 1 run data modify entity @n[tag=tils_graves.DummyItem] item set from entity @s data.Items[{Slot:102b}]
execute if data storage tils_graves:data {save_item:1b} run item replace entity @n[tag=tils_graves.Items2] container.12 from entity @n[tag=tils_graves.DummyItem] contents
# Helmet
execute store success storage tils_graves:data save_item byte 1 run data modify entity @n[tag=tils_graves.DummyItem] item set from entity @s data.Items[{Slot:103b}]
execute if data storage tils_graves:data {save_item:1b} run item replace entity @n[tag=tils_graves.Items2] container.13 from entity @n[tag=tils_graves.DummyItem] contents


$xp add @p[nbt={UUID:$(Owner)}] $(Xp)
data modify entity @s Xp set value 0

kill @e[tag=tils_graves,distance=..1]
kill @s
