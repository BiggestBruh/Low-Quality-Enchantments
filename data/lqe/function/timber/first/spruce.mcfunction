# Handle scoreboard counters
scoreboard players reset @s lqe.timber.spruce
scoreboard players add @s lqe.timber.blocks 1

# Break the current log
execute if block ~ ~ ~ minecraft:spruce_log run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if block ~ ~ ~ minecraft:spruce_log run setblock ~ ~ ~ minecraft:air

# Execute this function recursively for every adjacent block
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:spruce_log run function lqe:timber/spruce
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:spruce_log run function lqe:timber/spruce
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:spruce_log run function lqe:timber/spruce
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:spruce_log run function lqe:timber/spruce
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:spruce_log run function lqe:timber/spruce
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:spruce_log run function lqe:timber/spruce
execute positioned ~ ~1 ~1 if block ~ ~ ~ minecraft:spruce_log run function lqe:timber/spruce
execute positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:spruce_log run function lqe:timber/spruce
execute positioned ~1 ~1 ~ if block ~ ~ ~ minecraft:spruce_log run function lqe:timber/spruce
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ minecraft:spruce_log run function lqe:timber/spruce
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ minecraft:spruce_log run function lqe:timber/spruce
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ minecraft:spruce_log run function lqe:timber/spruce
execute positioned ~ ~1 ~-1 if block ~ ~ ~ minecraft:spruce_log run function lqe:timber/spruce
execute positioned ~ ~-1 ~1 if block ~ ~ ~ minecraft:spruce_log run function lqe:timber/spruce
execute positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:spruce_log run function lqe:timber/spruce
execute positioned ~-1 ~ ~1 if block ~ ~ ~ minecraft:spruce_log run function lqe:timber/spruce
execute positioned ~1 ~-1 ~ if block ~ ~ ~ minecraft:spruce_log run function lqe:timber/spruce
execute positioned ~-1 ~1 ~ if block ~ ~ ~ minecraft:spruce_log run function lqe:timber/spruce
execute positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:spruce_log run function lqe:timber/spruce
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ minecraft:spruce_log run function lqe:timber/spruce
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ minecraft:spruce_log run function lqe:timber/spruce
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:spruce_log run function lqe:timber/spruce
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ minecraft:spruce_log run function lqe:timber/spruce
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ minecraft:spruce_log run function lqe:timber/spruce
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ minecraft:spruce_log run function lqe:timber/spruce
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ minecraft:spruce_log run function lqe:timber/spruce

# Minecraft already deducts durability for breaking the first log, so we don't have to do it here