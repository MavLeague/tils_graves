# save old gamerule state
execute unless data storage tils_graves:data {active:true} store success storage tils_graves:data keepInventory byte 1 run gamerule keepInventory

# set variables
execute unless data storage tils_graves:data {active:false} run data modify storage tils_graves:data active set value true

# send message
execute if data storage tils_graves:data {active:true} run tellraw @a [{"text":""},{"text":"\n"},{"text":"               Welcome to "},{"text":"\n"},{"text":"       Til's Gravestones","bold":true,"color":"gold"},{"text":"\n"},{"text":"          Version: ","bold":false,"color":"yellow"},{"text":"1.12.4","color":"green"},{"text":".3.2","color":"gray"},{"text":"\n"}]


execute if data storage tils_graves:data {active:true} run function tils_graves:enable
execute if data storage tils_graves:data {active:false} run function tils_graves:disable
