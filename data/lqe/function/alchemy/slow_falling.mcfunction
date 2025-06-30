# Revoke helper advancement so it can trigger again on a future potion drinking
advancement revoke @s only lqe:technical/alchemy/slow_falling

# Give a potion effect with a duration depending on Alchemy level, if player even has this enchantment
execute if predicate lqe:alchemy/1 run effect give @s minecraft:slow_falling 108 0 false
execute if predicate lqe:alchemy/2 run effect give @s minecraft:slow_falling 126 0 false
execute if predicate lqe:alchemy/3 run effect give @s minecraft:slow_falling 144 0 false
execute if predicate lqe:alchemy/4 run effect give @s minecraft:slow_falling 162 0 false
execute if predicate lqe:alchemy/5 run effect give @s minecraft:slow_falling 180 0 false