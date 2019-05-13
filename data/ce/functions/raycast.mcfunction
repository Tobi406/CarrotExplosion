scoreboard players add @s ce.raycast 1
execute if block ~ ~ ~ minecraft:air unless score @s ce.raycast matches 700.. positioned ^ ^ ^0.2 run function ce:raycast
execute unless block ~ ~ ~ minecraft:air run function ce:tnt
