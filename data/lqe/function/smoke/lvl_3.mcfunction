# Spawn a smoke cloud
particle campfire_cosy_smoke ~ ~1 ~ 1.5 0.7 1.5 0.015 256
# Inflict blindness effect
effect give @e[distance=..2] minecraft:blindness 12 0 true
# Reduce follow range for a mob
attribute @e[type=!#lqe:immune_to_smoke,distance=..2,sort=nearest,limit=1] minecraft:follow_range modifier add lqe:enchantment.smoke -20 add_value
# Set a timer for removal of the follow range modifier
scoreboard players set @e[type=!#lqe:immune_to_smoke,distance=..2,sort=nearest,limit=1] lqe.smoke 241