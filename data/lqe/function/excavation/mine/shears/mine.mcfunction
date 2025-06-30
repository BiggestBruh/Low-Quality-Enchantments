execute unless block ~ ~ ~ #lqe:excavation/shears run return fail
loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air

# Damage the tool, with a chance of skipping damage when Unbreaking is present
scoreboard players set @s lqe.excavation.unbreaking_roll 0
execute if score @s lqe.enchantment_level matches 1 store result score @s lqe.excavation.unbreaking_roll run random value 0..1
execute if score @s lqe.enchantment_level matches 2 store result score @s lqe.excavation.unbreaking_roll run random value 0..2
execute if score @s lqe.enchantment_level matches 3 store result score @s lqe.excavation.unbreaking_roll run random value 0..3
execute if score @s lqe.enchantment_level matches 4 store result score @s lqe.excavation.unbreaking_roll run random value 0..4
execute if score @s lqe.enchantment_level matches 5 store result score @s lqe.excavation.unbreaking_roll run random value 0..5
execute if score @s lqe.enchantment_level matches 6 store result score @s lqe.excavation.unbreaking_roll run random value 0..6
execute if score @s lqe.enchantment_level matches 7 store result score @s lqe.excavation.unbreaking_roll run random value 0..7
execute if score @s lqe.enchantment_level matches 8 store result score @s lqe.excavation.unbreaking_roll run random value 0..8
execute if score @s lqe.enchantment_level matches 9 store result score @s lqe.excavation.unbreaking_roll run random value 0..9
execute if score @s lqe.enchantment_level matches 10 store result score @s lqe.excavation.unbreaking_roll run random value 0..10

execute if score @s lqe.excavation.unbreaking_roll matches 1.. run return fail
execute if predicate lqe:shears run item modify entity @s weapon.mainhand lqe:shears