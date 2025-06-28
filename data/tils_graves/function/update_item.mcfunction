advancement revoke @s only tils_graves:update_item

execute if items entity @s weapon.mainhand *[minecraft:custom_model_data={strings:["grave_key"]}] run item modify entity @s weapon.mainhand {function:"minecraft:set_components",components:{"minecraft:custom_model_data":{},"minecraft:item_model":"tils_graves:grave_key"}}