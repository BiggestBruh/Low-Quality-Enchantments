# s - gametime when marker was spawned, saved in marker's lqe.gametime score
# n - gametime now, saved in #temp's lqe.gametime score
# if s-n>=100, kill the marker as it's been alive for more than 5 seconds
scoreboard players operation @s lqe.gametime_temp = #temp lqe.gametime
scoreboard players operation @s lqe.gametime_temp -= @s lqe.gametime
execute if score @s lqe.gametime_temp matches ..99 run return fail
kill @s