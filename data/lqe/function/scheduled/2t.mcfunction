# Bleeding
# Spawn bleeding particles
execute as @e[type=!#lqe:immune_to_bleeding,scores={lqe.bleeding.1=1..}] at @s run particle minecraft:item{item:nether_wart_block} ~ ~0.5 ~ 0.2 0.3 0.2 0.02 16
execute as @e[type=!#lqe:immune_to_bleeding,scores={lqe.bleeding.2=1..}] at @s run particle minecraft:item{item:nether_wart_block} ~ ~0.5 ~ 0.2 0.3 0.2 0.022 20
execute as @e[type=!#lqe:immune_to_bleeding,scores={lqe.bleeding.3=1..}] at @s run particle minecraft:item{item:nether_wart_block} ~ ~0.5 ~ 0.2 0.3 0.2 0.024 24
execute as @e[type=!#lqe:immune_to_bleeding,scores={lqe.bleeding.4=1..}] at @s run particle minecraft:item{item:nether_wart_block} ~ ~0.5 ~ 0.2 0.3 0.2 0.026 28
execute as @e[type=!#lqe:immune_to_bleeding,scores={lqe.bleeding.5=1..}] at @s run particle minecraft:item{item:nether_wart_block} ~ ~0.5 ~ 0.2 0.3 0.2 0.028 32
execute as @e[type=!#lqe:immune_to_bleeding,scores={lqe.bleeding.6=1..}] at @s run particle minecraft:item{item:nether_wart_block} ~ ~0.5 ~ 0.2 0.3 0.2 0.03 36
execute as @e[type=!#lqe:immune_to_bleeding,scores={lqe.bleeding.7=1..}] at @s run particle minecraft:item{item:nether_wart_block} ~ ~0.5 ~ 0.2 0.3 0.2 0.032 40

schedule function lqe:scheduled/2t 2t