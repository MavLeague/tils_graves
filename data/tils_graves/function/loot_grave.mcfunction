summon chest_minecart ~ ~ ~ {Tags:["tils_graves","tils_graves.Items"],Items:[]}

data modify entity @n[tag=tils_graves.Items] Items set from entity @s data.Items

$xp add @p[nbt={UUID:$(Owner)}] $(Xp)
data modify entity @s Xp set value 0

kill @e[tag=tils_graves,distance=..1]
kill @s

say bling
