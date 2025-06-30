# Revoke helper advancement so it can trigger again on a future potion drinking
advancement revoke @s only lqe:technical/alchemy/strong_leaping

# Give a potion effect with a duration depending on Alchemy level, if player even has this enchantment
execute if predicate lqe:alchemy/1 run effect give @s minecraft:jump_boost 108 1 false
execute if predicate lqe:alchemy/2 run effect give @s minecraft:jump_boost 126 1 false
execute if predicate lqe:alchemy/3 run effect give @s minecraft:jump_boost 144 1 false
execute if predicate lqe:alchemy/4 run effect give @s minecraft:jump_boost 162 1 false
execute if predicate lqe:alchemy/5 run effect give @s minecraft:jump_boost 180 1 false