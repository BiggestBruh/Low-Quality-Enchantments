# Spawn a smoke cloud
particle campfire_cosy_smoke ~ ~1 ~ 1 0.5 1 0.025 64
# Inflict blindness effect
effect give @e[distance=..1] minecraft:blindness 4 0 true
# Reduce follow range for a mob
attribute @e[type=!#lqe:immune_to_smoke,distance=..1,sort=nearest,limit=1] minecraft:follow_range modifier add lqe:enchantment.smoke -12 add_value
# Set a timer for removal of the follow range modifier
scoreboard players set @e[type=!#lqe:immune_to_smoke,distance=..1,sort=nearest,limit=1] lqe.smoke 81