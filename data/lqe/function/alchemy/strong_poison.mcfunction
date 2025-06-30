# Revoke helper advancement so it can trigger again on a future potion drinking
advancement revoke @s only lqe:technical/alchemy/strong_poison

# Give a potion effect with a duration depending on Alchemy level, if player even has this enchantment
execute if predicate lqe:alchemy/1 run effect give @s minecraft:poison 26 1 false
execute if predicate lqe:alchemy/2 run effect give @s minecraft:poison 30 1 false
execute if predicate lqe:alchemy/3 run effect give @s minecraft:poison 35 1 false
execute if predicate lqe:alchemy/4 run effect give @s minecraft:poison 39 1 false
execute if predicate lqe:alchemy/5 run effect give @s minecraft:poison 43 1 false