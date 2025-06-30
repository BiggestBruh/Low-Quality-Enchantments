summon item ~ ~ ~ {Item:{id:"minecraft:stone",count:1b},Tags:["dropped_offhand"],PickupDelay:40}
$data modify entity @e[tag=dropped_offhand,limit=1] Item set from storage lqe:clumsy players[{ID:$(UUID)}]
tag @e[tag=dropped_mainhand] remove dropped_offhand