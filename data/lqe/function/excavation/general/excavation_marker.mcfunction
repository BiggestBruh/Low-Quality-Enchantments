tag @s add lqe.excavator
execute if score #temp lqe.excavation.axis matches 1 run tag @s add lqe.top_bottom
execute if score #temp lqe.excavation.axis matches 2 run tag @s add lqe.north_south
execute if score #temp lqe.excavation.axis matches 3 run tag @s add lqe.east_west
execute store result score @s lqe.gametime run time query gametime