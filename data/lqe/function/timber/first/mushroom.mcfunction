# Handle scoreboard counters
scoreboard players reset @s lqe.timber.mushroom
scoreboard players add @s lqe.timber.blocks 1

# Break the current block
execute if block ~ ~ ~ minecraft:mushroom_stem run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if block ~ ~ ~ minecraft:mushroom_stem run setblock ~ ~ ~ minecraft:air
execute if block ~ ~ ~ minecraft:red_mushroom_block run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if block ~ ~ ~ minecraft:red_mushroom_block run setblock ~ ~ ~ minecraft:air
execute if block ~ ~ ~ minecraft:brown_mushroom_block run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if block ~ ~ ~ minecraft:brown_mushroom_block run setblock ~ ~ ~ minecraft:air

# Execute this function recursively for every adjacent block
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:mushroom_stem run function lqe:timber/mushroom
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:mushroom_stem run function lqe:timber/mushroom
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:mushroom_stem run function lqe:timber/mushroom
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:mushroom_stem run function lqe:timber/mushroom
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:mushroom_stem run function lqe:timber/mushroom
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:mushroom_stem run function lqe:timber/mushroom

execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:red_mushroom_block run function lqe:timber/mushroom
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:red_mushroom_block run function lqe:timber/mushroom
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:red_mushroom_block run function lqe:timber/mushroom
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:red_mushroom_block run function lqe:timber/mushroom
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:red_mushroom_block run function lqe:timber/mushroom
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:red_mushroom_block run function lqe:timber/mushroom
execute positioned ~ ~1 ~1 if block ~ ~ ~ minecraft:red_mushroom_block run function lqe:timber/mushroom
execute positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:red_mushroom_block run function lqe:timber/mushroom
execute positioned ~1 ~1 ~ if block ~ ~ ~ minecraft:red_mushroom_block run function lqe:timber/mushroom
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ minecraft:red_mushroom_block run function lqe:timber/mushroom
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ minecraft:red_mushroom_block run function lqe:timber/mushroom
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ minecraft:red_mushroom_block run function lqe:timber/mushroom
execute positioned ~ ~1 ~-1 if block ~ ~ ~ minecraft:red_mushroom_block run function lqe:timber/mushroom
execute positioned ~ ~-1 ~1 if block ~ ~ ~ minecraft:red_mushroom_block run function lqe:timber/mushroom
execute positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:red_mushroom_block run function lqe:timber/mushroom
execute positioned ~-1 ~ ~1 if block ~ ~ ~ minecraft:red_mushroom_block run function lqe:timber/mushroom
execute positioned ~1 ~-1 ~ if block ~ ~ ~ minecraft:red_mushroom_block run function lqe:timber/mushroom
execute positioned ~-1 ~1 ~ if block ~ ~ ~ minecraft:red_mushroom_block run function lqe:timber/mushroom
execute positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:red_mushroom_block run function lqe:timber/mushroom
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ minecraft:red_mushroom_block run function lqe:timber/mushroom
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ minecraft:red_mushroom_block run function lqe:timber/mushroom
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:red_mushroom_block run function lqe:timber/mushroom
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ minecraft:red_mushroom_block run function lqe:timber/mushroom
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ minecraft:red_mushroom_block run function lqe:timber/mushroom
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ minecraft:red_mushroom_block run function lqe:timber/mushroom
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ minecraft:red_mushroom_block run function lqe:timber/mushroom

execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:brown_mushroom_block run function lqe:timber/mushroom
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:brown_mushroom_block run function lqe:timber/mushroom
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:brown_mushroom_block run function lqe:timber/mushroom
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:brown_mushroom_block run function lqe:timber/mushroom
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:brown_mushroom_block run function lqe:timber/mushroom
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:brown_mushroom_block run function lqe:timber/mushroom
execute positioned ~ ~1 ~1 if block ~ ~ ~ minecraft:brown_mushroom_block run function lqe:timber/mushroom
execute positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:brown_mushroom_block run function lqe:timber/mushroom
execute positioned ~1 ~1 ~ if block ~ ~ ~ minecraft:brown_mushroom_block run function lqe:timber/mushroom
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ minecraft:brown_mushroom_block run function lqe:timber/mushroom
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ minecraft:brown_mushroom_block run function lqe:timber/mushroom
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ minecraft:brown_mushroom_block run function lqe:timber/mushroom
execute positioned ~ ~1 ~-1 if block ~ ~ ~ minecraft:brown_mushroom_block run function lqe:timber/mushroom
execute positioned ~ ~-1 ~1 if block ~ ~ ~ minecraft:brown_mushroom_block run function lqe:timber/mushroom
execute positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:brown_mushroom_block run function lqe:timber/mushroom
execute positioned ~-1 ~ ~1 if block ~ ~ ~ minecraft:brown_mushroom_block run function lqe:timber/mushroom
execute positioned ~1 ~-1 ~ if block ~ ~ ~ minecraft:brown_mushroom_block run function lqe:timber/mushroom
execute positioned ~-1 ~1 ~ if block ~ ~ ~ minecraft:brown_mushroom_block run function lqe:timber/mushroom
execute positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:brown_mushroom_block run function lqe:timber/mushroom
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ minecraft:brown_mushroom_block run function lqe:timber/mushroom
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ minecraft:brown_mushroom_block run function lqe:timber/mushroom
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:brown_mushroom_block run function lqe:timber/mushroom
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ minecraft:brown_mushroom_block run function lqe:timber/mushroom
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ minecraft:brown_mushroom_block run function lqe:timber/mushroom
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ minecraft:brown_mushroom_block run function lqe:timber/mushroom
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ minecraft:brown_mushroom_block run function lqe:timber/mushroom

# Minecraft already deducts durability for breaking the first stem, so we don't have to do it here