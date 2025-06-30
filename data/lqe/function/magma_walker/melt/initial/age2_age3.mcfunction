# If block has been replaced, stop processing it
execute unless block ~ ~ ~ minecraft:magma_block run kill @s
execute unless block ~ ~ ~ minecraft:magma_block run return fail

# 1 in 3 chance to age in The Nether, 1 in 5 in Overworld and The End
execute if dimension minecraft:overworld store result score @s lqe.magma_walker.roll run random value 0..4
execute if dimension minecraft:the_end store result score @s lqe.magma_walker.roll run random value 0..4
execute if dimension minecraft:the_nether store result score @s lqe.magma_walker.roll run random value 0..2
execute if score @s lqe.magma_walker.roll matches 1.. run return fail

# Age the marker
tag @s remove lqe.magma_walker.age.2
tag @s add lqe.magma_walker.age.3