# Spawn a smoke cloud
particle campfire_cosy_smoke ~ ~1 ~ 1.75 0.8 1.75 0.01 384
# Inflict blindness effect
effect give @e[distance=..2.5] minecraft:blindness 16 0 true
# Reduce follow range for a mob
attribute @e[type=!#lqe:immune_to_smoke,distance=..2.5,sort=nearest,limit=1] minecraft:follow_range modifier add lqe:enchantment.smoke -24 add_value
# Set a timer for removal of the follow range modifier
scoreboard players set @e[type=!#lqe:immune_to_smoke,distance=..2.5,sort=nearest,limit=1] lqe.smoke 321