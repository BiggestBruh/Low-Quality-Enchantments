# Limit the velocity to range -500..500
# Arrows can't have motion that falls outside the -10..10 range (which is -1000..1000 for our scoreboard scores)
# I can't figure out why any of the math done here ever would make it fall outside that range, but I guess it does
# (if I don't limit the velocity, the arrows's x and z velocities get reset to 0 most of the time)
execute if score @s lqe.ricochet.dx matches 501.. run scoreboard players set @s lqe.ricochet.dx 500
execute if score @s lqe.ricochet.dx matches ..-501 run scoreboard players set @s lqe.ricochet.dx -500
execute if score @s lqe.ricochet.dy matches 501.. run scoreboard players set @s lqe.ricochet.dy 500
execute if score @s lqe.ricochet.dy matches ..-501 run scoreboard players set @s lqe.ricochet.dy -500
execute if score @s lqe.ricochet.dz matches 501.. run scoreboard players set @s lqe.ricochet.dz 500
execute if score @s lqe.ricochet.dz matches ..-501 run scoreboard players set @s lqe.ricochet.dz -500

# Reapply the capped x and z vecolities
execute store result entity @s Motion[0] double 0.01 run scoreboard players get @s lqe.ricochet.dx
execute store result entity @s Motion[2] double 0.01 run scoreboard players get @s lqe.ricochet.dz

# Change arrow's velocity depending on what directions are there blocks in
# Velocity stored back in the arrow is scaled - scale of 0.01 would restore the original velocity, 0.005 would halve it, -0.01 would invert it. Here it needs to be both inverted and scaled down.
execute unless block ~1 ~ ~ #minecraft:replaceable store result entity @s Motion[0] double -0.0065 run scoreboard players get @s lqe.ricochet.dx
execute unless block ~-1 ~ ~ #minecraft:replaceable store result entity @s Motion[0] double -0.0065 run scoreboard players get @s lqe.ricochet.dx
execute unless block ~ ~1 ~ #minecraft:replaceable store result entity @s Motion[1] double -0.0065 run scoreboard players get @s lqe.ricochet.dy
execute unless block ~ ~-1 ~ #minecraft:replaceable store result entity @s Motion[1] double -0.0065 run scoreboard players get @s lqe.ricochet.dy
execute unless block ~ ~ ~1 #minecraft:replaceable store result entity @s Motion[2] double -0.0065 run scoreboard players get @s lqe.ricochet.dz
execute unless block ~ ~ ~-1 #minecraft:replaceable store result entity @s Motion[2] double -0.0065 run scoreboard players get @s lqe.ricochet.dz
# Undo the arrow's stuck in ground status (don't bounce it off target blocks though)
execute unless entity @s[nbt={inBlockState:{Name:"minecraft:target"}}] run data modify entity @s inGround set value 0b

# Remove tag just to be safe, it will be reapplied on the next wall hit anyway
tag @s remove lqe.ricochet