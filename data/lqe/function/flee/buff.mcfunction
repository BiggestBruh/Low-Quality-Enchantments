# Aesthetics
particle minecraft:glow ~ ~ ~ 0 0.4 0 0.2 16

# Set a timer for the duration of the effect (3 + level seconds or 60 + level * 20 ticks)
tag @s add lqe.flee
execute if predicate lqe:flee/1 run scoreboard players set @s lqe.flee.timer 80
execute if predicate lqe:flee/2 run scoreboard players set @s lqe.flee.timer 100
execute if predicate lqe:flee/3 run scoreboard players set @s lqe.flee.timer 120
execute if predicate lqe:flee/4 run scoreboard players set @s lqe.flee.timer 140
execute if predicate lqe:flee/5 run scoreboard players set @s lqe.flee.timer 160

# Apply movement speed boost (0.05 + level * 0.01)
execute if predicate lqe:flee/1 run attribute @s minecraft:movement_speed modifier add lqe:enchantment.flee.speed 0.06 add_value
execute if predicate lqe:flee/2 run attribute @s minecraft:movement_speed modifier add lqe:enchantment.flee.speed 0.07 add_value
execute if predicate lqe:flee/3 run attribute @s minecraft:movement_speed modifier add lqe:enchantment.flee.speed 0.08 add_value
execute if predicate lqe:flee/4 run attribute @s minecraft:movement_speed modifier add lqe:enchantment.flee.speed 0.09 add_value
execute if predicate lqe:flee/5 run attribute @s minecraft:movement_speed modifier add lqe:enchantment.flee.speed 0.1 add_value

# Apply armor boost (level * 1)
execute if predicate lqe:flee/1 run attribute @s minecraft:armor modifier add lqe:enchantment.flee.armor 1 add_value
execute if predicate lqe:flee/2 run attribute @s minecraft:armor modifier add lqe:enchantment.flee.armor 2 add_value
execute if predicate lqe:flee/3 run attribute @s minecraft:armor modifier add lqe:enchantment.flee.armor 3 add_value
execute if predicate lqe:flee/4 run attribute @s minecraft:armor modifier add lqe:enchantment.flee.armor 4 add_value
execute if predicate lqe:flee/5 run attribute @s minecraft:armor modifier add lqe:enchantment.flee.armor 5 add_value