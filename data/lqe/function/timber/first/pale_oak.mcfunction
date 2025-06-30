# Handle scoreboard counters
scoreboard players reset @s lqe.timber.pale_oak
scoreboard players add @s lqe.timber.blocks 1

# Break the current log
execute if block ~ ~ ~ minecraft:pale_oak_log run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if block ~ ~ ~ minecraft:pale_oak_log run setblock ~ ~ ~ minecraft:air

# Execute this function recursively for every adjacent block
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:pale_oak_log run function lqe:timber/pale_oak
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:pale_oak_log run function lqe:timber/pale_oak
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:pale_oak_log run function lqe:timber/pale_oak
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:pale_oak_log run function lqe:timber/pale_oak
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:pale_oak_log run function lqe:timber/pale_oak
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:pale_oak_log run function lqe:timber/pale_oak
execute positioned ~ ~1 ~1 if block ~ ~ ~ minecraft:pale_oak_log run function lqe:timber/pale_oak
execute positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:pale_oak_log run function lqe:timber/pale_oak
execute positioned ~1 ~1 ~ if block ~ ~ ~ minecraft:pale_oak_log run function lqe:timber/pale_oak
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ minecraft:pale_oak_log run function lqe:timber/pale_oak
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ minecraft:pale_oak_log run function lqe:timber/pale_oak
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ minecraft:pale_oak_log run function lqe:timber/pale_oak
execute positioned ~ ~1 ~-1 if block ~ ~ ~ minecraft:pale_oak_log run function lqe:timber/pale_oak
execute positioned ~ ~-1 ~1 if block ~ ~ ~ minecraft:pale_oak_log run function lqe:timber/pale_oak
execute positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:pale_oak_log run function lqe:timber/pale_oak
execute positioned ~-1 ~ ~1 if block ~ ~ ~ minecraft:pale_oak_log run function lqe:timber/pale_oak
execute positioned ~1 ~-1 ~ if block ~ ~ ~ minecraft:pale_oak_log run function lqe:timber/pale_oak
execute positioned ~-1 ~1 ~ if block ~ ~ ~ minecraft:pale_oak_log run function lqe:timber/pale_oak
execute positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:pale_oak_log run function lqe:timber/pale_oak
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ minecraft:pale_oak_log run function lqe:timber/pale_oak
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ minecraft:pale_oak_log run function lqe:timber/pale_oak
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:pale_oak_log run function lqe:timber/pale_oak
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ minecraft:pale_oak_log run function lqe:timber/pale_oak
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ minecraft:pale_oak_log run function lqe:timber/pale_oak
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ minecraft:pale_oak_log run function lqe:timber/pale_oak
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ minecraft:pale_oak_log run function lqe:timber/pale_oak

# Minecraft already deducts durability for breaking the first log, so we don't have to do it here