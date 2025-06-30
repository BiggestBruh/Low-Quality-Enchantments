# Handle scoreboard counters
scoreboard players reset @s lqe.veinminer.lapis
scoreboard players add @s lqe.veinminer.blocks 1

# Break the current ore
execute if block ~ ~ ~ minecraft:lapis_ore run loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
execute if block ~ ~ ~ minecraft:lapis_ore run setblock ~ ~ ~ minecraft:air

# Execute this function recursively for every adjacent block
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:lapis_ore run function lqe:veinminer/lapis
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:lapis_ore run function lqe:veinminer/lapis
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:lapis_ore run function lqe:veinminer/lapis
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:lapis_ore run function lqe:veinminer/lapis
execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:lapis_ore run function lqe:veinminer/lapis
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:lapis_ore run function lqe:veinminer/lapis
execute positioned ~ ~1 ~1 if block ~ ~ ~ minecraft:lapis_ore run function lqe:veinminer/lapis
execute positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:lapis_ore run function lqe:veinminer/lapis
execute positioned ~1 ~1 ~ if block ~ ~ ~ minecraft:lapis_ore run function lqe:veinminer/lapis
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ minecraft:lapis_ore run function lqe:veinminer/lapis
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ minecraft:lapis_ore run function lqe:veinminer/lapis
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ minecraft:lapis_ore run function lqe:veinminer/lapis
execute positioned ~ ~1 ~-1 if block ~ ~ ~ minecraft:lapis_ore run function lqe:veinminer/lapis
execute positioned ~ ~-1 ~1 if block ~ ~ ~ minecraft:lapis_ore run function lqe:veinminer/lapis
execute positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:lapis_ore run function lqe:veinminer/lapis
execute positioned ~-1 ~ ~1 if block ~ ~ ~ minecraft:lapis_ore run function lqe:veinminer/lapis
execute positioned ~1 ~-1 ~ if block ~ ~ ~ minecraft:lapis_ore run function lqe:veinminer/lapis
execute positioned ~-1 ~1 ~ if block ~ ~ ~ minecraft:lapis_ore run function lqe:veinminer/lapis
execute positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:lapis_ore run function lqe:veinminer/lapis
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ minecraft:lapis_ore run function lqe:veinminer/lapis
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ minecraft:lapis_ore run function lqe:veinminer/lapis
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:lapis_ore run function lqe:veinminer/lapis
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ minecraft:lapis_ore run function lqe:veinminer/lapis
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ minecraft:lapis_ore run function lqe:veinminer/lapis
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ minecraft:lapis_ore run function lqe:veinminer/lapis
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ minecraft:lapis_ore run function lqe:veinminer/lapis

# Minecraft already deducts durability for breaking the first ore, so we don't have to do it here