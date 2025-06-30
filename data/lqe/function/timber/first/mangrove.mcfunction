# Handle scoreboard counters
scoreboard players reset @s lqe.timber.mangrove
scoreboard players add @s lqe.timber.blocks 1
# Break the current log
execute if block ~ ~ ~ minecraft:mangrove_log run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if block ~ ~ ~ minecraft:mangrove_log run setblock ~ ~ ~ minecraft:air
execute if block ~ ~ ~ minecraft:mangrove_roots run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if block ~ ~ ~ minecraft:mangrove_roots run setblock ~ ~ ~ minecraft:air

# Execute this function recursively for every adjacent block
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:mangrove_log run function lqe:timber/mangrove
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:mangrove_log run function lqe:timber/mangrove
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:mangrove_log run function lqe:timber/mangrove
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:mangrove_log run function lqe:timber/mangrove
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:mangrove_log run function lqe:timber/mangrove
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:mangrove_log run function lqe:timber/mangrove
execute positioned ~ ~1 ~1 if block ~ ~ ~ minecraft:mangrove_log run function lqe:timber/mangrove
execute positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:mangrove_log run function lqe:timber/mangrove
execute positioned ~1 ~1 ~ if block ~ ~ ~ minecraft:mangrove_log run function lqe:timber/mangrove
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ minecraft:mangrove_log run function lqe:timber/mangrove
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ minecraft:mangrove_log run function lqe:timber/mangrove
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ minecraft:mangrove_log run function lqe:timber/mangrove
execute positioned ~ ~1 ~-1 if block ~ ~ ~ minecraft:mangrove_log run function lqe:timber/mangrove
execute positioned ~ ~-1 ~1 if block ~ ~ ~ minecraft:mangrove_log run function lqe:timber/mangrove
execute positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:mangrove_log run function lqe:timber/mangrove
execute positioned ~-1 ~ ~1 if block ~ ~ ~ minecraft:mangrove_log run function lqe:timber/mangrove
execute positioned ~1 ~-1 ~ if block ~ ~ ~ minecraft:mangrove_log run function lqe:timber/mangrove
execute positioned ~-1 ~1 ~ if block ~ ~ ~ minecraft:mangrove_log run function lqe:timber/mangrove
execute positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:mangrove_log run function lqe:timber/mangrove
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ minecraft:mangrove_log run function lqe:timber/mangrove
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ minecraft:mangrove_log run function lqe:timber/mangrove
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:mangrove_log run function lqe:timber/mangrove
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ minecraft:mangrove_log run function lqe:timber/mangrove
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ minecraft:mangrove_log run function lqe:timber/mangrove
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ minecraft:mangrove_log run function lqe:timber/mangrove
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ minecraft:mangrove_log run function lqe:timber/mangrove

execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:mangrove_roots run function lqe:timber/mangrove
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:mangrove_roots run function lqe:timber/mangrove
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:mangrove_roots run function lqe:timber/mangrove
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:mangrove_roots run function lqe:timber/mangrove
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:mangrove_roots run function lqe:timber/mangrove
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:mangrove_roots run function lqe:timber/mangrove
execute positioned ~ ~1 ~1 if block ~ ~ ~ minecraft:mangrove_roots run function lqe:timber/mangrove
execute positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:mangrove_roots run function lqe:timber/mangrove
execute positioned ~1 ~1 ~ if block ~ ~ ~ minecraft:mangrove_roots run function lqe:timber/mangrove
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ minecraft:mangrove_roots run function lqe:timber/mangrove
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ minecraft:mangrove_roots run function lqe:timber/mangrove
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ minecraft:mangrove_roots run function lqe:timber/mangrove
execute positioned ~ ~1 ~-1 if block ~ ~ ~ minecraft:mangrove_roots run function lqe:timber/mangrove
execute positioned ~ ~-1 ~1 if block ~ ~ ~ minecraft:mangrove_roots run function lqe:timber/mangrove
execute positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:mangrove_roots run function lqe:timber/mangrove
execute positioned ~-1 ~ ~1 if block ~ ~ ~ minecraft:mangrove_roots run function lqe:timber/mangrove
execute positioned ~1 ~-1 ~ if block ~ ~ ~ minecraft:mangrove_roots run function lqe:timber/mangrove
execute positioned ~-1 ~1 ~ if block ~ ~ ~ minecraft:mangrove_roots run function lqe:timber/mangrove
execute positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:mangrove_roots run function lqe:timber/mangrove
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ minecraft:mangrove_roots run function lqe:timber/mangrove
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ minecraft:mangrove_roots run function lqe:timber/mangrove
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:mangrove_roots run function lqe:timber/mangrove
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ minecraft:mangrove_roots run function lqe:timber/mangrove
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ minecraft:mangrove_roots run function lqe:timber/mangrove
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ minecraft:mangrove_roots run function lqe:timber/mangrove
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ minecraft:mangrove_roots run function lqe:timber/mangrove

# Minecraft already deducts durability for breaking the first log, so we don't have to do it here