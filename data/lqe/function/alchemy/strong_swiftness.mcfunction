# Revoke helper advancement so it can trigger again on a future potion drinking
advancement revoke @s only lqe:technical/alchemy/strong_swiftness

# Give a potion effect with a duration depending on Alchemy level, if player even has this enchantment
execute if predicate lqe:alchemy/1 run effect give @s minecraft:speed 108 1 false
execute if predicate lqe:alchemy/2 run effect give @s minecraft:speed 126 1 false
execute if predicate lqe:alchemy/3 run effect give @s minecraft:speed 144 1 false
execute if predicate lqe:alchemy/4 run effect give @s minecraft:speed 162 1 false
execute if predicate lqe:alchemy/5 run effect give @s minecraft:speed 180 1 false