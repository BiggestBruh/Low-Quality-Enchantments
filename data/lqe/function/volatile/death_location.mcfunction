$execute store result storage lqe:volatile players[{ID:$(UUID)}].x int 1.0 run data get entity @s LastDeathLocation.pos[0]
$execute store result storage lqe:volatile players[{ID:$(UUID)}].y int 1.0 run data get entity @s LastDeathLocation.pos[1]
$execute store result storage lqe:volatile players[{ID:$(UUID)}].z int 1.0 run data get entity @s LastDeathLocation.pos[2]