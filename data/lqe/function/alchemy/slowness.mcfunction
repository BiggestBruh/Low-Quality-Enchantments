# Revoke helper advancement so it can trigger again on a future potion drinking
advancement revoke @s only lqe:technical/alchemy/slowness

# Give a potion effect with a duration depending on Alchemy level, if player even has this enchantment
execute if predicate lqe:alchemy/1 run effect give @s minecraft:slowness 108 0 false
execute if predicate lqe:alchemy/2 run effect give @s minecraft:slowness 126 0 false
execute if predicate lqe:alchemy/3 run effect give @s minecraft:slowness 144 0 false
execute if predicate lqe:alchemy/4 run effect give @s minecraft:slowness 162 0 false
execute if predicate lqe:alchemy/5 run effect give @s minecraft:slowness 180 0 false