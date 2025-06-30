# Count the number of bounces the arrow can do off a wall
scoreboard players add @s lqe.ricochet.bounces 1
# If exceeded 7 bounces, stop the enchantment's effect
execute if score @s lqe.ricochet.bounces matches 8.. run return fail
# Add a tag for tracking
tag @s add lqe.ricochet

# Fancy sound effect and particles on hit
data modify entity @s SoundEvent set value "minecraft:block.amethyst_block.place"
execute at @s run particle minecraft:electric_spark ~ ~ ~ 0.1 0.1 0.1 0.01 3

# Store arrow's velocity for processing (scaled to preserve decimals)
execute store result score @s lqe.ricochet.dx run data get entity @s Motion[0] 100
execute store result score @s lqe.ricochet.dy run data get entity @s Motion[1] 100
execute store result score @s lqe.ricochet.dz run data get entity @s Motion[2] 100

# This doesn't work without a 1 tick delay for some reason
schedule function lqe:ricochet/delay/lvl_3 1t append