# Revoke helper advancement so it can trigger again on a future potion drinking
advancement revoke @s only lqe:technical/alchemy/turtle_master

# Give a potion effect with a duration depending on Alchemy level, if player even has this enchantment
execute if predicate lqe:alchemy/1 run effect give @s minecraft:slowness 48 3 false
execute if predicate lqe:alchemy/1 run effect give @s minecraft:resistance 48 2 false

execute if predicate lqe:alchemy/2 run effect give @s minecraft:slowness 56 3 false
execute if predicate lqe:alchemy/2 run effect give @s minecraft:resistance 56 2 false

execute if predicate lqe:alchemy/3 run effect give @s minecraft:slowness 64 3 false
execute if predicate lqe:alchemy/3 run effect give @s minecraft:resistance 64 2 false

execute if predicate lqe:alchemy/4 run effect give @s minecraft:slowness 72 3 false
execute if predicate lqe:alchemy/4 run effect give @s minecraft:resistance 72 2 false

execute if predicate lqe:alchemy/5 run effect give @s minecraft:slowness 80 3 false
execute if predicate lqe:alchemy/5 run effect give @s minecraft:resistance 80 2 false