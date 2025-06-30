# Process mainhand and offhand separately

# Count whether just one or both of player's mainhand/offhand items are droppable
# 0 - just one; 1 - both
scoreboard players set @s lqe.clumsiness.roll -1
execute if predicate lqe:clumsy/mainhand run scoreboard players add @s lqe.clumsiness.roll 1
execute if predicate lqe:clumsy/offhand run scoreboard players add @s lqe.clumsiness.roll 1

# If just one item is droppable, process that item
execute if score @s lqe.clumsiness.roll matches 0 if predicate lqe:clumsy/mainhand run function lqe:clumsy/mainhand/process
execute if score @s lqe.clumsiness.roll matches 0 if predicate lqe:clumsy/offhand run function lqe:clumsy/offhand/process

# If both are droppable, randomize
# 0 - mainhand; 1 - offhand
execute if score @s lqe.clumsiness.roll matches 1 store result score @s lqe.clumsiness.result run random value 0..1
# And process whichever got rolled
execute if score @s lqe.clumsiness.roll matches 1 if score @s lqe.clumsiness.result matches 0 if predicate lqe:clumsy/mainhand run function lqe:clumsy/mainhand/process
execute if score @s lqe.clumsiness.roll matches 1 if score @s lqe.clumsiness.result matches 1 if predicate lqe:clumsy/offhand run function lqe:clumsy/offhand/process