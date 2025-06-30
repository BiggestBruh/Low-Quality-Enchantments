# Summon a marker at player's position
execute align xyz positioned ~0.5 ~1.5 ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:[lqe.luminance.marker.2,lqe.luminance.2]}

# Search for a valid location to place a light block
execute as @e[type=marker,tag=lqe.luminance.2] at @s run function lqe:luminance/lvl_2/illuminate