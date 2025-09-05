# Mark hook as waiting for its tag, to prevent the caster from being damaged
tag @s add lqe.hook.5.waiting
execute store result score @s lqe.gametime run time query gametime
# Give the hook its tag after 5 ticks
schedule function lqe:hook/tag/lvl_5 5t append