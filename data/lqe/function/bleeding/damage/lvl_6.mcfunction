# Handle Bleeding effect timer
scoreboard players remove @s lqe.bleeding.6 1
scoreboard players operation @s lqe.bleeding.mod = @s lqe.bleeding.6
# Deal bleeding damage every 20 ticks
scoreboard players operation @s lqe.bleeding.mod %= #20 lqe.const
execute if score @s lqe.bleeding.mod matches 0 run damage @s 0.5 lqe:bleeding
execute if score @s lqe.bleeding.mod matches 0 run scoreboard players add @s lqe.damage.bleeding 1