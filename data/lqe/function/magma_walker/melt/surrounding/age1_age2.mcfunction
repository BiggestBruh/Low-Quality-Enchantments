# Age the marker
tag @s remove lqe.magma_walker.age.1
tag @s add lqe.magma_walker.age.2

# Transform the basalt block into magma
execute if block ~ ~ ~ minecraft:basalt run fill ~ ~ ~ ~ ~ ~ minecraft:magma_block replace minecraft:basalt