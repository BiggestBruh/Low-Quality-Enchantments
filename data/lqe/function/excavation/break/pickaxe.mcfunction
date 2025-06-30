# Use marker's tag to determine along which axis to break the blocks
execute if entity @s[tag=lqe.top_bottom] as @p[predicate=lqe:excavation] align xyz positioned ~0.5 ~0.5 ~0.5 run function lqe:excavation/mine/pickaxe/top_bottom
execute if entity @s[tag=lqe.north_south] as @p[predicate=lqe:excavation] align xyz positioned ~0.5 ~0.5 ~0.5 run function lqe:excavation/mine/pickaxe/north_south
execute if entity @s[tag=lqe.east_west] as @p[predicate=lqe:excavation] align xyz positioned ~0.5 ~0.5 ~0.5 run function lqe:excavation/mine/pickaxe/east_west

# Get rid of the marker
kill @s