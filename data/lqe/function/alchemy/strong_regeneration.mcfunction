# Revoke helper advancement so it can trigger again on a future potion drinking
advancement revoke @s only lqe:technical/alchemy/strong_regeneration

# Give a potion effect with a duration depending on Alchemy level, if player even has this enchantment
execute if predicate lqe:alchemy/1 run effect give @s minecraft:regeneration 27 1 false
execute if predicate lqe:alchemy/2 run effect give @s minecraft:regeneration 32 1 false
execute if predicate lqe:alchemy/3 run effect give @s minecraft:regeneration 36 1 false
execute if predicate lqe:alchemy/4 run effect give @s minecraft:regeneration 41 1 false
execute if predicate lqe:alchemy/5 run effect give @s minecraft:regeneration 45 1 false