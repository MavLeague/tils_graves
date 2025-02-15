# drop majority of the items
summon chest_minecart ~ ~ ~ {Tags:["tils_graves","tils_graves.Items1"],Items:[]}

data modify entity @n[tag=tils_graves.Items1] Items set from entity @s data.Items


# dropping missing item slots manually
summon chest_minecart ~ ~ ~ {Tags:["tils_graves","tils_graves.Items2"],Items:[]}
summon item_display ~ ~ ~ {Tags:["tils_graves","tils_graves.DummyItem"]}

data modify entity @n[tag=tils_graves.DummyItem] item set from entity @s data.Items[{Slot:27b}]
item replace entity @n[tag=tils_graves.Items2] container.0 from entity @n[tag=tils_graves.DummyItem] contents

data modify entity @n[tag=tils_graves.DummyItem] item set from entity @s data.Items[{Slot:28b}]
item replace entity @n[tag=tils_graves.Items2] container.1 from entity @n[tag=tils_graves.DummyItem] contents

data modify entity @n[tag=tils_graves.DummyItem] item set from entity @s data.Items[{Slot:29b}]
item replace entity @n[tag=tils_graves.Items2] container.2 from entity @n[tag=tils_graves.DummyItem] contents

data modify entity @n[tag=tils_graves.DummyItem] item set from entity @s data.Items[{Slot:30b}]
item replace entity @n[tag=tils_graves.Items2] container.3 from entity @n[tag=tils_graves.DummyItem] contents

data modify entity @n[tag=tils_graves.DummyItem] item set from entity @s data.Items[{Slot:31b}]
item replace entity @n[tag=tils_graves.Items2] container.4 from entity @n[tag=tils_graves.DummyItem] contents

data modify entity @n[tag=tils_graves.DummyItem] item set from entity @s data.Items[{Slot:32b}]
item replace entity @n[tag=tils_graves.Items2] container.5 from entity @n[tag=tils_graves.DummyItem] contents

data modify entity @n[tag=tils_graves.DummyItem] item set from entity @s data.Items[{Slot:33b}]
item replace entity @n[tag=tils_graves.Items2] container.6 from entity @n[tag=tils_graves.DummyItem] contents

data modify entity @n[tag=tils_graves.DummyItem] item set from entity @s data.Items[{Slot:34b}]
item replace entity @n[tag=tils_graves.Items2] container.7 from entity @n[tag=tils_graves.DummyItem] contents

data modify entity @n[tag=tils_graves.DummyItem] item set from entity @s data.Items[{Slot:35b}]
item replace entity @n[tag=tils_graves.Items2] container.8 from entity @n[tag=tils_graves.DummyItem] contents

# Offhand
data modify entity @n[tag=tils_graves.DummyItem] item set from entity @s data.Items[{Slot:-106b}]
item replace entity @n[tag=tils_graves.Items2] container.9 from entity @n[tag=tils_graves.DummyItem] contents
# Boots
data modify entity @n[tag=tils_graves.DummyItem] item set from entity @s data.Items[{Slot:100b}]
item replace entity @n[tag=tils_graves.Items2] container.10 from entity @n[tag=tils_graves.DummyItem] contents
# Leggins
data modify entity @n[tag=tils_graves.DummyItem] item set from entity @s data.Items[{Slot:101b}]
item replace entity @n[tag=tils_graves.Items2] container.11 from entity @n[tag=tils_graves.DummyItem] contents
# Chestplate
data modify entity @n[tag=tils_graves.DummyItem] item set from entity @s data.Items[{Slot:102b}]
item replace entity @n[tag=tils_graves.Items2] container.12 from entity @n[tag=tils_graves.DummyItem] contents
# Helmet
data modify entity @n[tag=tils_graves.DummyItem] item set from entity @s data.Items[{Slot:103b}]
item replace entity @n[tag=tils_graves.Items2] container.13 from entity @n[tag=tils_graves.DummyItem] contents


$xp add @p[nbt={UUID:$(Owner)}] $(Xp)
data modify entity @s Xp set value 0

kill @e[tag=tils_graves,distance=..1]
kill @s
