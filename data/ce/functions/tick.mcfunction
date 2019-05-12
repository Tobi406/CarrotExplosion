execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:'{"text":"Explosioner"}'}}}},scores={ce.click=1..}] at @s run function ce:raycast
scoreboard players reset @a[scores={ce.click=1..}] ce.click
scoreboard players reset @a[scores={ce.raycast=1..}] ce.raycast
