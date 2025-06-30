# Revoke helper advancement so it can trigger again on a future potion drinking
advancement revoke @s only lqe:technical/alchemy/strong_slowness

# Give a potion effect with a duration depending on Alchemy level, if player even has this enchantment
execute if predicate lqe:alchemy/1 run effect give @s minecraft:slowness 24 3 false
execute if predicate lqe:alchemy/2 run effect give @s minecraft:slowness 28 3 false
execute if predicate lqe:alchemy/3 run effect give @s minecraft:slowness 32 3 false
execute if predicate lqe:alchemy/4 run effect give @s minecraft:slowness 36 3 false
execute if predicate lqe:alchemy/5 run effect give @s minecraft:slowness 40 3 false