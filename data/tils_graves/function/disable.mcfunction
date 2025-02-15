execute if data storage tils_graves:data {active:true} run data modify storage tils_graves:data active set value false

execute if data storage tils_graves:data {active:false} run tellraw @a [{"text":""},{"text":"\n"},{"text":"Grave stones are "},{"text":"Disabled ","bold":true,"italic":true,"color":"red"},{"text":"(enable)","underlined":true,"color":"gold","clickEvent":{"action":"suggest_command","value":"/function tils_graves:enable"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click for Command Preview"}]}}]

# add scoreboards
execute if data storage tils_graves:data {active:false} run scoreboard objectives remove tils_graves.death

# set gamerules
execute if data storage tils_graves:data {keepInventory:0b} run gamerule keepInventory false
