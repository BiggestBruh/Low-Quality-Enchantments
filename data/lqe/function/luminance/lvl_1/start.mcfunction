# Summon a marker at player's position
execute align xyz positioned ~0.5 ~1.5 ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:[lqe.luminance.marker.1,lqe.luminance.1]}

# Search for a valid location to place a light block
execute as @e[type=marker,tag=lqe.luminance.1] at @s run function lqe:luminance/lvl_1/illuminate