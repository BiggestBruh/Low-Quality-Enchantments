# Handle Bleeding effect timer
scoreboard players remove @s lqe.bleeding.1 1
scoreboard players operation @s lqe.bleeding.mod = @s lqe.bleeding.1
# Deal bleeding damage every 45 ticks
scoreboard players operation @s lqe.bleeding.mod %= #45 lqe.const
execute if score @s lqe.bleeding.mod matches 0 run damage @s 1 lqe:bleeding
execute if score @s lqe.bleeding.mod matches 0 run scoreboard players add @s lqe.damage.bleeding 1