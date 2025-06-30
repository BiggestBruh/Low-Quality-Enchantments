# Revoke helper advancement so it can trigger again on a future potion drinking
advancement revoke @s only lqe:technical/alchemy/invisibility

# Give a potion effect with a duration depending on Alchemy level, if player even has this enchantment
execute if predicate lqe:alchemy/1 run effect give @s minecraft:invisibility 216 0 false
execute if predicate lqe:alchemy/2 run effect give @s minecraft:invisibility 252 0 false
execute if predicate lqe:alchemy/3 run effect give @s minecraft:invisibility 288 0 false
execute if predicate lqe:alchemy/4 run effect give @s minecraft:invisibility 324 0 false
execute if predicate lqe:alchemy/5 run effect give @s minecraft:invisibility 360 0 false