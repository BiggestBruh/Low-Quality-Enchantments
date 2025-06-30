# Magma Walker
# Age all magma blocks of age 3
execute as @e[type=marker,tag=lqe.magma_walker.age.3] at @s run function lqe:magma_walker/melt/initial/age3_age4
# Age all magma blocks of age 2
execute as @e[type=marker,tag=lqe.magma_walker.age.2] at @s run function lqe:magma_walker/melt/initial/age2_age3
# Age all basalt blocks of age 1
execute as @e[type=marker,tag=lqe.magma_walker.age.1] at @s run function lqe:magma_walker/melt/initial/age1_age2
# Age all basalt blocks of age 0
execute as @e[type=marker,tag=lqe.magma_walker.age.0] at @s run function lqe:magma_walker/melt/initial/age0_age1

# Spirit
# Spawn random particle amount around dogs with the Spirit enchantment
execute as @e[type=minecraft:wolf,predicate=lqe:spirit] store result score @s lqe.spirit.particles run random value 0..8
execute as @e[type=minecraft:wolf,predicate=lqe:spirit,scores={lqe.spirit.particles=5..7}] at @s run particle minecraft:end_rod ~ ~0.7 ~ 0 0.1 0 0.02 1
execute as @e[type=minecraft:wolf,predicate=lqe:spirit,scores={lqe.spirit.particles=8}] at @s run particle minecraft:end_rod ~ ~0.7 ~ 0 0.1 0 0.02 2


schedule function lqe:scheduled/2s 2s