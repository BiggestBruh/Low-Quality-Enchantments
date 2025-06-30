# Send a ray from player's eyes to the first non-empty block within 5 blocks (Or 7, or 14 to account for
# any interaction range extending enchantments)
# This is for figuring out which block face got hit
execute if predicate lqe:builder if predicate lqe:giant run scoreboard players set @s lqe.excavation.iterator 140
execute if predicate lqe:builder run scoreboard players set @s lqe.excavation.iterator 70
execute if predicate lqe:giant run scoreboard players set @s lqe.excavation.iterator 70
execute unless predicate lqe:builder unless predicate lqe:giant run scoreboard players set @s lqe.excavation.iterator 50
execute at @s anchored eyes positioned ^ ^ ^ run function lqe:excavation/general/loop

# Save the axis for later
scoreboard players operation #temp lqe.excavation.axis = @s lqe.excavation.axis
# Summon a marker at hit block's position
execute align xyz summon marker run function lqe:excavation/general/excavation_marker
# Kill marker after 5 seconds
schedule function lqe:excavation/general/process_marker 5s append