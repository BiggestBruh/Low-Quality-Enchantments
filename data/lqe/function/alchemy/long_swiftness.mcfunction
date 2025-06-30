# Revoke helper advancement so it can trigger again on a future potion drinking
advancement revoke @s only lqe:technical/alchemy/long_swiftness

# Give a potion effect with a duration depending on Alchemy level, if player even has this enchantment
execute if predicate lqe:alchemy/1 run effect give @s minecraft:speed 576 0 false
execute if predicate lqe:alchemy/2 run effect give @s minecraft:speed 672 0 false
execute if predicate lqe:alchemy/3 run effect give @s minecraft:speed 768 0 false
execute if predicate lqe:alchemy/4 run effect give @s minecraft:speed 864 0 false
execute if predicate lqe:alchemy/5 run effect give @s minecraft:speed 960 0 false