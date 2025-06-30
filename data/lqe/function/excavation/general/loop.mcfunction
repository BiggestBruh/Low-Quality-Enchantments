scoreboard players remove @s lqe.excavation.iterator 1

# If a block is hit, figure out which face of the block was hit
execute positioned ^ ^ ^0.1 unless block ~ ~ ~ #lqe:excavation/empty run function lqe:excavation/general/check_axis

execute if score @s lqe.excavation.iterator matches 0.. positioned ^ ^ ^0.1 if block ~ ~ ~ #lqe:excavation/empty run function lqe:excavation/general/loop