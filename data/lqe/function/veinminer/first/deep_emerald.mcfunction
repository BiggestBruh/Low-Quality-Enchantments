# Handle scoreboard counters
scoreboard players reset @s lqe.veinminer.coal
scoreboard players add @s lqe.veinminer.blocks 1

# Break the current ore
execute if block ~ ~ ~ minecraft:deepslate_emerald_ore run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if block ~ ~ ~ minecraft:deepslate_emerald_ore run setblock ~ ~ ~ minecraft:air

# Execute this function recursively for every adjacent block
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:deepslate_emerald_ore run function lqe:veinminer/deep_emerald
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:deepslate_emerald_ore run function lqe:veinminer/deep_emerald
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:deepslate_emerald_ore run function lqe:veinminer/deep_emerald
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:deepslate_emerald_ore run function lqe:veinminer/deep_emerald
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:deepslate_emerald_ore run function lqe:veinminer/deep_emerald
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:deepslate_emerald_ore run function lqe:veinminer/deep_emerald
execute positioned ~ ~1 ~1 if block ~ ~ ~ minecraft:deepslate_emerald_ore run function lqe:veinminer/deep_emerald
execute positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:deepslate_emerald_ore run function lqe:veinminer/deep_emerald
execute positioned ~1 ~1 ~ if block ~ ~ ~ minecraft:deepslate_emerald_ore run function lqe:veinminer/deep_emerald
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ minecraft:deepslate_emerald_ore run function lqe:veinminer/deep_emerald
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ minecraft:deepslate_emerald_ore run function lqe:veinminer/deep_emerald
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ minecraft:deepslate_emerald_ore run function lqe:veinminer/deep_emerald
execute positioned ~ ~1 ~-1 if block ~ ~ ~ minecraft:deepslate_emerald_ore run function lqe:veinminer/deep_emerald
execute positioned ~ ~-1 ~1 if block ~ ~ ~ minecraft:deepslate_emerald_ore run function lqe:veinminer/deep_emerald
execute positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:deepslate_emerald_ore run function lqe:veinminer/deep_emerald
execute positioned ~-1 ~ ~1 if block ~ ~ ~ minecraft:deepslate_emerald_ore run function lqe:veinminer/deep_emerald
execute positioned ~1 ~-1 ~ if block ~ ~ ~ minecraft:deepslate_emerald_ore run function lqe:veinminer/deep_emerald
execute positioned ~-1 ~1 ~ if block ~ ~ ~ minecraft:deepslate_emerald_ore run function lqe:veinminer/deep_emerald
execute positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:deepslate_emerald_ore run function lqe:veinminer/deep_emerald
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ minecraft:deepslate_emerald_ore run function lqe:veinminer/deep_emerald
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ minecraft:deepslate_emerald_ore run function lqe:veinminer/deep_emerald
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:deepslate_emerald_ore run function lqe:veinminer/deep_emerald
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ minecraft:deepslate_emerald_ore run function lqe:veinminer/deep_emerald
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ minecraft:deepslate_emerald_ore run function lqe:veinminer/deep_emerald
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ minecraft:deepslate_emerald_ore run function lqe:veinminer/deep_emerald
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ minecraft:deepslate_emerald_ore run function lqe:veinminer/deep_emerald

# Minecraft already deducts durability for breaking the first ore, so we don't have to do it here