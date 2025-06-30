# Revoke helper advancement so it can trigger again on a future potion drinking
advancement revoke @s only lqe:technical/alchemy/regeneration

# Give a potion effect with a duration depending on Alchemy level, if player even has this enchantment
execute if predicate lqe:alchemy/1 run effect give @s minecraft:regeneration 54 0 false
execute if predicate lqe:alchemy/2 run effect give @s minecraft:regeneration 63 0 false
execute if predicate lqe:alchemy/3 run effect give @s minecraft:regeneration 72 0 false
execute if predicate lqe:alchemy/4 run effect give @s minecraft:regeneration 81 0 false
execute if predicate lqe:alchemy/5 run effect give @s minecraft:regeneration 90 0 false