# Handle Bleeding effect timer
scoreboard players remove @s lqe.bleeding.5 1
scoreboard players operation @s lqe.bleeding.mod = @s lqe.bleeding.5
# Deal bleeding damage every 25 ticks
scoreboard players operation @s lqe.bleeding.mod %= #25 lqe.const
execute if score @s lqe.bleeding.mod matches 0 run damage @s 0.5 lqe:bleeding
execute if score @s lqe.bleeding.mod matches 0 run scoreboard players add @s lqe.damage.bleeding 1