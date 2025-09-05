# s - gametime when hook was spawned, saved in hook's lqe.gametime score
# n - gametime now, saved in #temp's lqe.gametime score
# if s-n>=20, give the hook its tag as it has existed for more than 5 ticks and thus is likely away from the caster
scoreboard players operation @s lqe.gametime_temp = #temp lqe.gametime
scoreboard players operation @s lqe.gametime_temp -= @s lqe.gametime
execute if score @s lqe.gametime_temp matches ..4 run return fail
tag @s add lqe.hook.3