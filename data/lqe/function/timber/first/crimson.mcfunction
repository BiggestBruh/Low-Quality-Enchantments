# Handle scoreboard counters
scoreboard players reset @s lqe.timber.crimson
scoreboard players add @s lqe.timber.blocks 1

# Break the current stem
execute if block ~ ~ ~ minecraft:crimson_stem run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if block ~ ~ ~ minecraft:crimson_stem run setblock ~ ~ ~ minecraft:air
execute if block ~ ~ ~ minecraft:nether_wart_block run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if block ~ ~ ~ minecraft:nether_wart_block run setblock ~ ~ ~ minecraft:air
execute if block ~ ~ ~ minecraft:shroomlight run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if block ~ ~ ~ minecraft:shroomlight run setblock ~ ~ ~ minecraft:air

# Execute this function recursively for every adjacent block
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:crimson_stem run function lqe:timber/crimson
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:crimson_stem run function lqe:timber/crimson
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:crimson_stem run function lqe:timber/crimson
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:crimson_stem run function lqe:timber/crimson
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:crimson_stem run function lqe:timber/crimson
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:crimson_stem run function lqe:timber/crimson

execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:shroomlight run function lqe:timber/crimson
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:shroomlight run function lqe:timber/crimson
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:shroomlight run function lqe:timber/crimson
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:shroomlight run function lqe:timber/crimson
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:shroomlight run function lqe:timber/crimson
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:shroomlight run function lqe:timber/crimson

execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:nether_wart_block run function lqe:timber/crimson
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:nether_wart_block run function lqe:timber/crimson
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:nether_wart_block run function lqe:timber/crimson
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:nether_wart_block run function lqe:timber/crimson
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:nether_wart_block run function lqe:timber/crimson
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:nether_wart_block run function lqe:timber/crimson
execute positioned ~ ~1 ~1 if block ~ ~ ~ minecraft:nether_wart_block run function lqe:timber/crimson
execute positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:nether_wart_block run function lqe:timber/crimson
execute positioned ~1 ~1 ~ if block ~ ~ ~ minecraft:nether_wart_block run function lqe:timber/crimson
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ minecraft:nether_wart_block run function lqe:timber/crimson
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ minecraft:nether_wart_block run function lqe:timber/crimson
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ minecraft:nether_wart_block run function lqe:timber/crimson
execute positioned ~ ~1 ~-1 if block ~ ~ ~ minecraft:nether_wart_block run function lqe:timber/crimson
execute positioned ~ ~-1 ~1 if block ~ ~ ~ minecraft:nether_wart_block run function lqe:timber/crimson
execute positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:nether_wart_block run function lqe:timber/crimson
execute positioned ~-1 ~ ~1 if block ~ ~ ~ minecraft:nether_wart_block run function lqe:timber/crimson
execute positioned ~1 ~-1 ~ if block ~ ~ ~ minecraft:nether_wart_block run function lqe:timber/crimson
execute positioned ~-1 ~1 ~ if block ~ ~ ~ minecraft:nether_wart_block run function lqe:timber/crimson
execute positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:nether_wart_block run function lqe:timber/crimson
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ minecraft:nether_wart_block run function lqe:timber/crimson
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ minecraft:nether_wart_block run function lqe:timber/crimson
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:nether_wart_block run function lqe:timber/crimson
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ minecraft:nether_wart_block run function lqe:timber/crimson
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ minecraft:nether_wart_block run function lqe:timber/crimson
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ minecraft:nether_wart_block run function lqe:timber/crimson
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ minecraft:nether_wart_block run function lqe:timber/crimson

# Minecraft already deducts durability for breaking the first stem, so we don't have to do it here