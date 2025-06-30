# Handle scoreboard counters
scoreboard players reset @s lqe.veinminer.coal
scoreboard players add @s lqe.veinminer.blocks 1
# If the block limit is reached, stop executing
execute if score @s lqe.veinminer.blocks matches 64.. run tag @s add lqe.veinminer.stop
execute if score @s lqe.veinminer.blocks matches 64.. run return run scoreboard players reset @s lqe.veinminer.wait

# Break the current ore
execute if block ~ ~ ~ minecraft:deepslate_iron_ore run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if block ~ ~ ~ minecraft:deepslate_iron_ore run setblock ~ ~ ~ minecraft:air

# Execute this function recursively for every adjacent block
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:deepslate_iron_ore run function lqe:veinminer/deep_iron
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:deepslate_iron_ore run function lqe:veinminer/deep_iron
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:deepslate_iron_ore run function lqe:veinminer/deep_iron
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:deepslate_iron_ore run function lqe:veinminer/deep_iron
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:deepslate_iron_ore run function lqe:veinminer/deep_iron
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:deepslate_iron_ore run function lqe:veinminer/deep_iron
execute positioned ~ ~1 ~1 if block ~ ~ ~ minecraft:deepslate_iron_ore run function lqe:veinminer/deep_iron
execute positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:deepslate_iron_ore run function lqe:veinminer/deep_iron
execute positioned ~1 ~1 ~ if block ~ ~ ~ minecraft:deepslate_iron_ore run function lqe:veinminer/deep_iron
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ minecraft:deepslate_iron_ore run function lqe:veinminer/deep_iron
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ minecraft:deepslate_iron_ore run function lqe:veinminer/deep_iron
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ minecraft:deepslate_iron_ore run function lqe:veinminer/deep_iron
execute positioned ~ ~1 ~-1 if block ~ ~ ~ minecraft:deepslate_iron_ore run function lqe:veinminer/deep_iron
execute positioned ~ ~-1 ~1 if block ~ ~ ~ minecraft:deepslate_iron_ore run function lqe:veinminer/deep_iron
execute positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:deepslate_iron_ore run function lqe:veinminer/deep_iron
execute positioned ~-1 ~ ~1 if block ~ ~ ~ minecraft:deepslate_iron_ore run function lqe:veinminer/deep_iron
execute positioned ~1 ~-1 ~ if block ~ ~ ~ minecraft:deepslate_iron_ore run function lqe:veinminer/deep_iron
execute positioned ~-1 ~1 ~ if block ~ ~ ~ minecraft:deepslate_iron_ore run function lqe:veinminer/deep_iron
execute positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:deepslate_iron_ore run function lqe:veinminer/deep_iron
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ minecraft:deepslate_iron_ore run function lqe:veinminer/deep_iron
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ minecraft:deepslate_iron_ore run function lqe:veinminer/deep_iron
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:deepslate_iron_ore run function lqe:veinminer/deep_iron
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ minecraft:deepslate_iron_ore run function lqe:veinminer/deep_iron
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ minecraft:deepslate_iron_ore run function lqe:veinminer/deep_iron
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ minecraft:deepslate_iron_ore run function lqe:veinminer/deep_iron
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ minecraft:deepslate_iron_ore run function lqe:veinminer/deep_iron

# When Unbreaking is present, roll whether durability damage will be skipped
scoreboard players set @s lqe.veinminer.unbreaking_roll 0
execute if predicate lqe:unbreaking/1 store result score @s lqe.veinminer.unbreaking_roll run random value 0..1
execute if predicate lqe:unbreaking/2 store result score @s lqe.veinminer.unbreaking_roll run random value 0..2
execute if predicate lqe:unbreaking/3 store result score @s lqe.veinminer.unbreaking_roll run random value 0..3
execute if predicate lqe:unbreaking/4 store result score @s lqe.veinminer.unbreaking_roll run random value 0..4
execute if predicate lqe:unbreaking/5 store result score @s lqe.veinminer.unbreaking_roll run random value 0..5
execute if predicate lqe:unbreaking/6 store result score @s lqe.veinminer.unbreaking_roll run random value 0..6
execute if predicate lqe:unbreaking/7 store result score @s lqe.veinminer.unbreaking_roll run random value 0..7
execute if predicate lqe:unbreaking/8 store result score @s lqe.veinminer.unbreaking_roll run random value 0..8
execute if predicate lqe:unbreaking/9 store result score @s lqe.veinminer.unbreaking_roll run random value 0..9
execute if predicate lqe:unbreaking/10 store result score @s lqe.veinminer.unbreaking_roll run random value 0..10

execute if score @s lqe.veinminer.unbreaking_roll matches 1.. run return fail

# If Unbreaking roll has not landed, deduct durability
execute if predicate lqe:gold_tool run item modify entity @s weapon.mainhand lqe:gold
execute if predicate lqe:wood_tool run item modify entity @s weapon.mainhand lqe:wood
execute if predicate lqe:stone_tool run item modify entity @s weapon.mainhand lqe:stone
execute if predicate lqe:iron_tool run item modify entity @s weapon.mainhand lqe:iron
execute if predicate lqe:diamond_tool run item modify entity @s weapon.mainhand lqe:diamond
execute if predicate lqe:netherite_tool run item modify entity @s weapon.mainhand lqe:netherite