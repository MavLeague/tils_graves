execute if data storage tils_graves:data {active:true} run data modify storage tils_graves:data active set value false

execute if data storage tils_graves:data {active:false} run tellraw @a ["",{text:""},{text:"\n"},{text:"Grave stones are "},{text:"Disabled ",bold:true,italic:true,color:"red"},{text:"(enable)",underlined:true,color:"gold",click_event:{action:"suggest_command",command:"/function tils_graves:enable"},hover_event:{action:"show_text",value:[{text:"Click for Command Preview"}]}}]

# add scoreboards
execute if data storage tils_graves:data {active:false} run scoreboard objectives remove tils_graves.death
execute if data storage tils_graves:data {active:false} run scoreboard objectives remove tils_graves.days

# set gamerules
execute if data storage tils_graves:data {keepInventory:0b} run gamerule keepInventory false
