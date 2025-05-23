# toggle state
execute if data storage tils_graves:data {active:false} run data modify storage tils_graves:data active set value true

# sent message
execute if data storage tils_graves:data {active:true} run tellraw @a ["",{text:""},{text:"\n"},{text:"Grave stones are "},{text:"Enabled ",bold:true,italic:true,color:"green"},{text:"(disable)",underlined:true,color:"gold",click_event:{action:"suggest_command",command:"/function tils_graves:disable"},hover_event:{action:"show_text",value:[{text:"Click for Command Preview"}]}}]

# add scoreboards
execute if data storage tils_graves:data {active:true} run scoreboard objectives add tils_graves.death deathCount
execute if data storage tils_graves:data {active:true} run scoreboard objectives add tils_graves.days dummy

execute unless score #decay tils_graves.days matches 1.. run scoreboard players set #decay tils_graves.days 5

# set gamerules
gamerule keepInventory true


# drop all items
kill @e[tag=tils_graves.Items]
kill @e[tag=tils_graves.Items1]
kill @e[tag=tils_graves.Items2]
