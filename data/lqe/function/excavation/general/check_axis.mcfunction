# Check which face of the block was hit
# 1 - top or bottom
# 2 - north or south
# 3 - east or west
# The block was found by sort of "sending out a ray" from the player's eyes, so the block face can be found by
# trying to slightly backtrack in each direction - if we exit a solid block, that means that's the direction we came from
scoreboard players set @s lqe.excavation.axis 0
execute if block ~ ~0.1 ~ #lqe:excavation/empty run scoreboard players set @s lqe.excavation.axis 1
execute if block ~ ~-0.1 ~ #lqe:excavation/empty run scoreboard players set @s lqe.excavation.axis 1
execute if block ~0.1 ~ ~ #lqe:excavation/empty run scoreboard players set @s lqe.excavation.axis 2
execute if block ~-0.1 ~ ~ #lqe:excavation/empty run scoreboard players set @s lqe.excavation.axis 2
execute if block ~ ~ ~0.1 #lqe:excavation/empty run scoreboard players set @s lqe.excavation.axis 3
execute if block ~ ~ ~-0.1 #lqe:excavation/empty run scoreboard players set @s lqe.excavation.axis 3