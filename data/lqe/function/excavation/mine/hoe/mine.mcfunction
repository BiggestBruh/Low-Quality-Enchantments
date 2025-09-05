execute unless block ~ ~ ~ #lqe:excavation/hoe run return fail
loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
# Spawn experience orbs
execute if block ~ ~ ~ minecraft:sculk if predicate lqe:extraction/0 run scoreboard players set @s lqe.excavation.xp_roll 1
execute if block ~ ~ ~ minecraft:sculk if predicate lqe:extraction/1 run scoreboard players set @s lqe.excavation.xp_roll 1
execute if block ~ ~ ~ minecraft:sculk if predicate lqe:extraction/2 run scoreboard players set @s lqe.excavation.xp_roll 2
execute if block ~ ~ ~ minecraft:sculk if predicate lqe:extraction/3 run scoreboard players set @s lqe.excavation.xp_roll 2
execute if block ~ ~ ~ minecraft:sculk if predicate lqe:extraction/4 run scoreboard players set @s lqe.excavation.xp_roll 2
execute if block ~ ~ ~ minecraft:sculk if predicate lqe:extraction/5 run scoreboard players set @s lqe.excavation.xp_roll 2
execute if block ~ ~ ~ minecraft:sculk_sensor if predicate lqe:extraction/0 run scoreboard players set @s lqe.excavation.xp_roll 5
execute if block ~ ~ ~ minecraft:sculk_sensor if predicate lqe:extraction/1 run scoreboard players set @s lqe.excavation.xp_roll 6
execute if block ~ ~ ~ minecraft:sculk_sensor if predicate lqe:extraction/2 run scoreboard players set @s lqe.excavation.xp_roll 8
execute if block ~ ~ ~ minecraft:sculk_sensor if predicate lqe:extraction/3 run scoreboard players set @s lqe.excavation.xp_roll 9
execute if block ~ ~ ~ minecraft:sculk_sensor if predicate lqe:extraction/4 run scoreboard players set @s lqe.excavation.xp_roll 10
execute if block ~ ~ ~ minecraft:sculk_sensor if predicate lqe:extraction/5 run scoreboard players set @s lqe.excavation.xp_roll 11
execute if block ~ ~ ~ minecraft:sculk_shrieker if predicate lqe:extraction/0 run scoreboard players set @s lqe.excavation.xp_roll 5
execute if block ~ ~ ~ minecraft:sculk_shrieker if predicate lqe:extraction/1 run scoreboard players set @s lqe.excavation.xp_roll 6
execute if block ~ ~ ~ minecraft:sculk_shrieker if predicate lqe:extraction/2 run scoreboard players set @s lqe.excavation.xp_roll 8
execute if block ~ ~ ~ minecraft:sculk_shrieker if predicate lqe:extraction/3 run scoreboard players set @s lqe.excavation.xp_roll 9
execute if block ~ ~ ~ minecraft:sculk_shrieker if predicate lqe:extraction/4 run scoreboard players set @s lqe.excavation.xp_roll 10
execute if block ~ ~ ~ minecraft:sculk_shrieker if predicate lqe:extraction/5 run scoreboard players set @s lqe.excavation.xp_roll 11
execute if block ~ ~ ~ minecraft:sculk_catalyst if predicate lqe:extraction/0 run scoreboard players set @s lqe.excavation.xp_roll 5
execute if block ~ ~ ~ minecraft:sculk_catalyst if predicate lqe:extraction/1 run scoreboard players set @s lqe.excavation.xp_roll 6
execute if block ~ ~ ~ minecraft:sculk_catalyst if predicate lqe:extraction/2 run scoreboard players set @s lqe.excavation.xp_roll 8
execute if block ~ ~ ~ minecraft:sculk_catalyst if predicate lqe:extraction/3 run scoreboard players set @s lqe.excavation.xp_roll 9
execute if block ~ ~ ~ minecraft:sculk_catalyst if predicate lqe:extraction/4 run scoreboard players set @s lqe.excavation.xp_roll 10
execute if block ~ ~ ~ minecraft:sculk_catalyst if predicate lqe:extraction/5 run scoreboard players set @s lqe.excavation.xp_roll 11
execute store result storage lqe excavation.xp_roll int 1 run scoreboard players get @s lqe.excavation.xp_roll
function lqe:excavation/general/summon_xp with storage lqe excavation
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
execute if predicate lqe:gold_tool run item modify entity @s weapon.mainhand lqe:gold
execute if predicate lqe:wood_tool run item modify entity @s weapon.mainhand lqe:wood
execute if predicate lqe:stone_tool run item modify entity @s weapon.mainhand lqe:stone
execute if predicate lqe:iron_tool run item modify entity @s weapon.mainhand lqe:iron
execute if predicate lqe:diamond_tool run item modify entity @s weapon.mainhand lqe:diamond
execute if predicate lqe:netherite_tool run item modify entity @s weapon.mainhand lqe:netherite