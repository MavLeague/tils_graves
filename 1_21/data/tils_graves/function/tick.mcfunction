# create grave on death
execute if data storage tils_graves:data {active:true} as @a[scores={tils_graves.death=1..}] at @s run function tils_graves:init_create_grave

# looting graves has been moved to the advancement tils_graves:interaction