# Revoke helper advancement so it can trigger again on a future potion drinking
advancement revoke @s only lqe:technical/alchemy/long_poison

# Give a potion effect with a duration depending on Alchemy level, if player even has this enchantment
execute if predicate lqe:alchemy/1 run effect give @s minecraft:poison 108 0 false
execute if predicate lqe:alchemy/2 run effect give @s minecraft:poison 126 0 false
execute if predicate lqe:alchemy/3 run effect give @s minecraft:poison 144 0 false
execute if predicate lqe:alchemy/4 run effect give @s minecraft:poison 162 0 false
execute if predicate lqe:alchemy/5 run effect give @s minecraft:poison 180 0 false