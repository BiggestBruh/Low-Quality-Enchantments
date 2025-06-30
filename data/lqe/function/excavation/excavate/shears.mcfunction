# Get player's level of Unbreaking, for reducing durability damage
scoreboard players set @s lqe.enchantment_level 0
execute if predicate lqe:unbreaking/1 run scoreboard players set @s lqe.enchantment_level 1
execute if predicate lqe:unbreaking/2 run scoreboard players set @s lqe.enchantment_level 2
execute if predicate lqe:unbreaking/3 run scoreboard players set @s lqe.enchantment_level 3
execute if predicate lqe:unbreaking/4 run scoreboard players set @s lqe.enchantment_level 4
execute if predicate lqe:unbreaking/5 run scoreboard players set @s lqe.enchantment_level 5
execute if predicate lqe:unbreaking/6 run scoreboard players set @s lqe.enchantment_level 6
execute if predicate lqe:unbreaking/7 run scoreboard players set @s lqe.enchantment_level 7
execute if predicate lqe:unbreaking/8 run scoreboard players set @s lqe.enchantment_level 8
execute if predicate lqe:unbreaking/9 run scoreboard players set @s lqe.enchantment_level 9
execute if predicate lqe:unbreaking/10 run scoreboard players set @s lqe.enchantment_level 10
# Place marker at hit block and detect which face of the block has been hit
function lqe:excavation/general/start
# Process placed marker to see if its block has been broken yet
function lqe:excavation/air_check/shears