# Consume player's XP based on the Charged level
execute if predicate lqe:charged/1 run xp add @s -3
execute if predicate lqe:charged/2 run xp add @s -6
execute if predicate lqe:charged/3 run xp add @s -9
execute if predicate lqe:charged/4 run xp add @s -12
execute if predicate lqe:charged/5 run xp add @s -15
execute if predicate lqe:charged/6 run xp add @s -18
execute if predicate lqe:charged/7 run xp add @s -21