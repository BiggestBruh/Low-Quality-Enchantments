# Scoreboards to keep track of the effect durations that the player will receive on respawn
# Each level of Rebirth increases the duration
scoreboard players set @s lqe.rebirth.duration 0

execute if predicate lqe:rebirth/chest/1 run scoreboard players add @s lqe.rebirth.duration 2
execute if predicate lqe:rebirth/chest/2 run scoreboard players add @s lqe.rebirth.duration 4
execute if predicate lqe:rebirth/chest/3 run scoreboard players add @s lqe.rebirth.duration 6

execute if predicate lqe:rebirth/feet/1 run scoreboard players add @s lqe.rebirth.duration 2
execute if predicate lqe:rebirth/feet/2 run scoreboard players add @s lqe.rebirth.duration 4
execute if predicate lqe:rebirth/feet/3 run scoreboard players add @s lqe.rebirth.duration 6

execute if predicate lqe:rebirth/head/1 run scoreboard players add @s lqe.rebirth.duration 2
execute if predicate lqe:rebirth/head/2 run scoreboard players add @s lqe.rebirth.duration 4
execute if predicate lqe:rebirth/head/3 run scoreboard players add @s lqe.rebirth.duration 6

execute if predicate lqe:rebirth/legs/1 run scoreboard players add @s lqe.rebirth.duration 2
execute if predicate lqe:rebirth/legs/2 run scoreboard players add @s lqe.rebirth.duration 4
execute if predicate lqe:rebirth/legs/3 run scoreboard players add @s lqe.rebirth.duration 6

# Store duration and level for use in macro
function lqe:rebirth/calculate_effects/store with entity @s