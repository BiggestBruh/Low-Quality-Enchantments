# Handle scoreboard counters
scoreboard players reset @s lqe.veinminer.coal
scoreboard players add @s lqe.veinminer.blocks 1

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

# Minecraft already deducts durability for breaking the first ore, so we don't have to do it here