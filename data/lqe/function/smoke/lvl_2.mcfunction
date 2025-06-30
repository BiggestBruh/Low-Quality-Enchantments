# Spawn a smoke cloud
particle campfire_cosy_smoke ~ ~1 ~ 1.25 0.6 1.25 0.02 128
# Inflict blindness effect
effect give @e[distance=..1.5] minecraft:blindness 8 0 true
# Reduce follow range for a mob
attribute @e[type=!#lqe:immune_to_smoke,distance=..1.5,sort=nearest,limit=1] minecraft:follow_range modifier add lqe:enchantment.smoke -16 add_value
# Set a timer for removal of the follow range modifier
scoreboard players set @e[type=!#lqe:immune_to_smoke,distance=..1.5,sort=nearest,limit=1] lqe.smoke 161