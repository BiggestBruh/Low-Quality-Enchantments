# If block has been replaced, stop processing it
execute unless block ~ ~ ~ minecraft:magma_block run kill @s
execute unless block ~ ~ ~ minecraft:magma_block run return fail

# 1 in 3 chance to age in The Nether, 1 in 5 in Overworld and The End
execute if dimension minecraft:overworld store result score @s lqe.magma_walker.roll run random value 0..4
execute if dimension minecraft:the_end store result score @s lqe.magma_walker.roll run random value 0..4
execute if dimension minecraft:the_nether store result score @s lqe.magma_walker.roll run random value 0..2
execute if score @s lqe.magma_walker.roll matches 1.. run return fail

# Transform the magma block into lava
execute if block ~ ~ ~ minecraft:magma_block run fill ~ ~ ~ ~ ~ ~ minecraft:lava replace minecraft:magma_block

# Age the surrounding markers too, but don't make it a chain reaction
execute as @e[type=marker,distance=..1,tag=lqe.magma_walker.age.3] at @s run function lqe:magma_walker/melt/surrounding/age3_age4
execute as @e[type=marker,distance=..1,tag=lqe.magma_walker.age.2] at @s run function lqe:magma_walker/melt/surrounding/age2_age3
execute as @e[type=marker,distance=..1,tag=lqe.magma_walker.age.1] at @s run function lqe:magma_walker/melt/surrounding/age1_age2
execute as @e[type=marker,distance=..1,tag=lqe.magma_walker.age.0] at @s run function lqe:magma_walker/melt/surrounding/age0_age1

# Discard the marker
kill @s