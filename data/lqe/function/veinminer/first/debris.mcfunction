# Handle scoreboard counters
scoreboard players reset @s lqe.veinminer.coal
scoreboard players add @s lqe.veinminer.blocks 1

# Break the current ore
execute if block ~ ~ ~ minecraft:ancient_debris run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if block ~ ~ ~ minecraft:ancient_debris run setblock ~ ~ ~ minecraft:air

# Execute this function recursively for every adjacent block
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:ancient_debris run function lqe:veinminer/debris
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:ancient_debris run function lqe:veinminer/debris
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:ancient_debris run function lqe:veinminer/debris
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:ancient_debris run function lqe:veinminer/debris
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:ancient_debris run function lqe:veinminer/debris
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:ancient_debris run function lqe:veinminer/debris
execute positioned ~ ~1 ~1 if block ~ ~ ~ minecraft:ancient_debris run function lqe:veinminer/debris
execute positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:ancient_debris run function lqe:veinminer/debris
execute positioned ~1 ~1 ~ if block ~ ~ ~ minecraft:ancient_debris run function lqe:veinminer/debris
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ minecraft:ancient_debris run function lqe:veinminer/debris
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ minecraft:ancient_debris run function lqe:veinminer/debris
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ minecraft:ancient_debris run function lqe:veinminer/debris
execute positioned ~ ~1 ~-1 if block ~ ~ ~ minecraft:ancient_debris run function lqe:veinminer/debris
execute positioned ~ ~-1 ~1 if block ~ ~ ~ minecraft:ancient_debris run function lqe:veinminer/debris
execute positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:ancient_debris run function lqe:veinminer/debris
execute positioned ~-1 ~ ~1 if block ~ ~ ~ minecraft:ancient_debris run function lqe:veinminer/debris
execute positioned ~1 ~-1 ~ if block ~ ~ ~ minecraft:ancient_debris run function lqe:veinminer/debris
execute positioned ~-1 ~1 ~ if block ~ ~ ~ minecraft:ancient_debris run function lqe:veinminer/debris
execute positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:ancient_debris run function lqe:veinminer/debris
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ minecraft:ancient_debris run function lqe:veinminer/debris
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ minecraft:ancient_debris run function lqe:veinminer/debris
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:ancient_debris run function lqe:veinminer/debris
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ minecraft:ancient_debris run function lqe:veinminer/debris
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ minecraft:ancient_debris run function lqe:veinminer/debris
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ minecraft:ancient_debris run function lqe:veinminer/debris
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ minecraft:ancient_debris run function lqe:veinminer/debris

# Minecraft already deducts durability for breaking the first ore, so we don't have to do it here