execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Explosioner"}'}}}},scores={ce.click=1..}] if score @s ce.cooldown matches 1.. at @s run title @s actionbar ["",{"text":"You need to wait ","color":"green"},{"score":{"objective":"ce.secs","name":"@s"},"color":"red"},{"text":" seconds","color":"green"}]
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Explosioner"}'}}}},scores={ce.click=1..}] unless score @s ce.cooldown matches 1.. at @s run function ce:raycast
scoreboard players reset @a[scores={ce.click=1..}] ce.click
scoreboard players reset @a[scores={ce.raycast=1..}] ce.raycast
scoreboard players remove @a[scores={ce.cooldown=1..}] ce.cooldown 1

execute as @a[scores={ce.cooldown=1..}] run scoreboard players operation @s ce.secs = @s ce.cooldown
execute as @a[scores={ce.cooldown=1..}] run scoreboard players operation @s ce.secs /= #20 ce.cooldown
