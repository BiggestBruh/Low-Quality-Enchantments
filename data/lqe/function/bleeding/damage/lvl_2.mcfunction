# Handle Bleeding effect timer
scoreboard players remove @s lqe.bleeding.2 1
scoreboard players operation @s lqe.bleeding.mod = @s lqe.bleeding.2
# Deal bleeding damage every 40 ticks
scoreboard players operation @s lqe.bleeding.mod %= #40 lqe.const
execute if score @s lqe.bleeding.mod matches 0 run damage @s 0.5 lqe:bleeding
execute if score @s lqe.bleeding.mod matches 0 run scoreboard players add @s lqe.damage.bleeding 1