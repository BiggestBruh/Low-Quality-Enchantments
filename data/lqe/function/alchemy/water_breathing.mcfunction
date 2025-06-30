# Revoke helper advancement so it can trigger again on a future potion drinking
advancement revoke @s only lqe:technical/alchemy/water_breathing

# Give a potion effect with a duration depending on Alchemy level, if player even has this enchantment
execute if predicate lqe:alchemy/1 run effect give @s minecraft:water_breathing 216 0 false
execute if predicate lqe:alchemy/2 run effect give @s minecraft:water_breathing 252 0 false
execute if predicate lqe:alchemy/3 run effect give @s minecraft:water_breathing 288 0 false
execute if predicate lqe:alchemy/4 run effect give @s minecraft:water_breathing 324 0 false
execute if predicate lqe:alchemy/5 run effect give @s minecraft:water_breathing 360 0 false