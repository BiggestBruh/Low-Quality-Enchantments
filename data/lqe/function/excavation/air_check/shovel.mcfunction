# Particle spawns to mark the marker's location (for debugging)
# execute as @e[type=marker,tag=lqe.excavator] at @s run particle sculk_soul ~0.5 ~0.5 ~0.5
# execute as @e[type=marker,tag=lqe.excavator] at @s run particle egg_crack ~0.5 ~0.5 ~1.5
# execute as @e[type=marker,tag=lqe.excavator] at @s run particle egg_crack ~0.5 ~1.5 ~0.5
# execute as @e[type=marker,tag=lqe.excavator] at @s run particle egg_crack ~0.5 ~1.5 ~1.5
# execute as @e[type=marker,tag=lqe.excavator] at @s run particle egg_crack ~1.5 ~0.5 ~0.5
# execute as @e[type=marker,tag=lqe.excavator] at @s run particle egg_crack ~1.5 ~0.5 ~1.5
# execute as @e[type=marker,tag=lqe.excavator] at @s run particle egg_crack ~1.5 ~1.5 ~0.5
# execute as @e[type=marker,tag=lqe.excavator] at @s run particle egg_crack ~1.5 ~1.5 ~1.5
# execute as @e[type=marker,tag=lqe.excavator] at @s run particle egg_crack ~0.5 ~0.5 ~-0.5
# execute as @e[type=marker,tag=lqe.excavator] at @s run particle egg_crack ~0.5 ~-0.5 ~0.5
# execute as @e[type=marker,tag=lqe.excavator] at @s run particle egg_crack ~0.5 ~-0.5 ~-0.5
# execute as @e[type=marker,tag=lqe.excavator] at @s run particle egg_crack ~-0.5 ~0.5 ~0.5
# execute as @e[type=marker,tag=lqe.excavator] at @s run particle egg_crack ~-0.5 ~0.5 ~-0.5
# execute as @e[type=marker,tag=lqe.excavator] at @s run particle egg_crack ~-0.5 ~-0.5 ~0.5
# execute as @e[type=marker,tag=lqe.excavator] at @s run particle egg_crack ~-0.5 ~-0.5 ~-0.5
# execute as @e[type=marker,tag=lqe.excavator] at @s run particle egg_crack ~0.5 ~1.5 ~-0.5
# execute as @e[type=marker,tag=lqe.excavator] at @s run particle egg_crack ~0.5 ~-0.5 ~1.5
# execute as @e[type=marker,tag=lqe.excavator] at @s run particle egg_crack ~-0.5 ~0.5 ~1.5
# execute as @e[type=marker,tag=lqe.excavator] at @s run particle egg_crack ~1.5 ~0.5 ~-0.5
# execute as @e[type=marker,tag=lqe.excavator] at @s run particle egg_crack ~-0.5 ~1.5 ~0.5
# execute as @e[type=marker,tag=lqe.excavator] at @s run particle egg_crack ~1.5 ~-0.5 ~0.5
# execute as @e[type=marker,tag=lqe.excavator] at @s run particle egg_crack ~-0.5 ~1.5 ~1.5
# execute as @e[type=marker,tag=lqe.excavator] at @s run particle egg_crack ~1.5 ~-0.5 ~1.5
# execute as @e[type=marker,tag=lqe.excavator] at @s run particle egg_crack ~1.5 ~1.5 ~-0.5
# execute as @e[type=marker,tag=lqe.excavator] at @s run particle egg_crack ~-0.5 ~-0.5 ~1.5
# execute as @e[type=marker,tag=lqe.excavator] at @s run particle egg_crack ~-0.5 ~1.5 ~-0.5
# execute as @e[type=marker,tag=lqe.excavator] at @s run particle egg_crack ~1.5 ~-0.5 ~-0.5

# If the marker is in an empty block (the block has now been broken), break the other blocks
execute as @e[type=marker,tag=lqe.excavator] at @s if block ~ ~ ~ #lqe:excavation/empty run function lqe:excavation/break/shovel

# If marker is yet to be killed, recheck for an empty block in a little
execute if entity @e[type=marker,tag=lqe.excavator] run schedule function lqe:excavation/air_check/shovel 2t append