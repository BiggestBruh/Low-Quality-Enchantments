# Antidote I
#   Poison limited to 15s and lvl I
#   Wither unaffected
execute if predicate lqe:antidote/1 if predicate lqe:antidote/poison/15s run function lqe:antidote/lvl_1

# Antidote II
#   Poison limited to 10s and lvl I
#   Wither unaffected
execute if predicate lqe:antidote/2 if predicate lqe:antidote/poison/10s run function lqe:antidote/lvl_2

# Antidote III
#   Poison limited to 5s and lvl I
#   Wither limited to 5s and lvl I
execute if predicate lqe:antidote/3 if predicate lqe:antidote/poison/5s run function lqe:antidote/lvl_3_poison
execute if predicate lqe:antidote/3 if predicate lqe:antidote/wither/5s run function lqe:antidote/lvl_3_wither

# Antidote IV
#   Poison immunity
#   Wither immunity
execute if predicate lqe:antidote/4 if predicate lqe:antidote/poison/1t run effect clear @s minecraft:poison
execute if predicate lqe:antidote/4 if predicate lqe:antidote/wither/1t run effect clear @s minecraft:wither