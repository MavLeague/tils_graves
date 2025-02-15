# toggle state
execute if data storage tils_graves:data {active:false} run data modify storage tils_graves:data active set value true

# sent message
execute if data storage tils_graves:data {active:true} run tellraw @a [{"text":""},{"text":"\n"},{"text":"Grave stones are "},{"text":"Enabled ","bold":true,"italic":true,"color":"green"},{"text":"(disable)","underlined":true,"color":"gold","clickEvent":{"action":"suggest_command","value":"/function tils_graves:disable"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click for Command Preview"}]}}]

# add scoreboards
execute if data storage tils_graves:data {active:true} run scoreboard objectives add tils_graves.death deathCount


# set gamerules
gamerule keepInventory true
