# Spawn a smoke cloud
particle campfire_cosy_smoke ~ ~1 ~ 2 0.9 2 0.005 512
# Inflict blindness effect
effect give @e[distance=..3] minecraft:blindness 20 0 true
# Reduce follow range for a mob
attribute @e[type=!#lqe:immune_to_smoke,distance=..3,sort=nearest,limit=1] minecraft:follow_range modifier add lqe:enchantment.smoke -28 add_value
# Set a timer for removal of the follow range modifier
scoreboard players set @e[type=!#lqe:immune_to_smoke,distance=..3,sort=nearest,limit=1] lqe.smoke 401