# Check for an unoccupied surrounding block
execute at @s unless block ~ ~ ~ #lqe:luminance/air unless block ~ ~ ~ minecraft:water[level=0] if block ~ ~1 ~ #lqe:luminance/air run tp ~ ~1 ~
execute at @s unless block ~ ~ ~ #lqe:luminance/air unless block ~ ~ ~ minecraft:water[level=0] if block ~ ~-1 ~ #lqe:luminance/air run tp ~ ~-1 ~
execute at @s unless block ~ ~ ~ #lqe:luminance/air unless block ~ ~ ~ minecraft:water[level=0] if block ~1 ~ ~ #lqe:luminance/air run tp ~1 ~ ~
execute at @s unless block ~ ~ ~ #lqe:luminance/air unless block ~ ~ ~ minecraft:water[level=0] if block ~-1 ~ ~ #lqe:luminance/air run tp ~-1 ~ ~
execute at @s unless block ~ ~ ~ #lqe:luminance/air unless block ~ ~ ~ minecraft:water[level=0] if block ~ ~ ~1 #lqe:luminance/air run tp ~ ~ ~1
execute at @s unless block ~ ~ ~ #lqe:luminance/air unless block ~ ~ ~ minecraft:water[level=0] if block ~ ~ ~-1 #lqe:luminance/air run tp ~ ~ ~-1

# If no unoccupied block found, kill the marker
execute at @s unless block ~ ~ ~ #lqe:luminance/air unless block ~ ~ ~ minecraft:water[level=0] run return run kill @s
# If there is an already processed marker nearby, delete it
execute at @s if entity @e[type=marker,tag=lqe.luminance.marker.2,tag=!lqe.luminance.2,distance=..0.5] run kill @e[type=marker,tag=lqe.luminance.marker.2,tag=!lqe.luminance.2,distance=..0.5]

# Place a new light
execute at @s if block ~ ~ ~ #lqe:luminance/air unless block ~ ~ ~ minecraft:light[waterlogged=true] run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=10,waterlogged=false] replace #lqe:luminance/air
execute at @s if block ~ ~ ~ minecraft:water[level=0] run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=10,waterlogged=true] replace minecraft:water[level=0]
execute at @s if block ~ ~ ~ minecraft:light[waterlogged=true] run fill ~ ~ ~ ~ ~ ~ minecraft:light[level=10,waterlogged=true] replace minecraft:water[level=0]

# Mark this marker as processed
tag @s remove lqe.luminance.2

