# Fix player's Evolution counter if they're using a higher level weapon than before
execute if predicate lqe:evolution/min/10 if score @s lqe.evolution matches ..1499 run scoreboard players set @s lqe.evolution 1500
execute if predicate lqe:evolution/min/9 if score @s lqe.evolution matches ..1249 run scoreboard players set @s lqe.evolution 1250
execute if predicate lqe:evolution/min/8 if score @s lqe.evolution matches ..999 run scoreboard players set @s lqe.evolution 1000
execute if predicate lqe:evolution/min/7 if score @s lqe.evolution matches ..799 run scoreboard players set @s lqe.evolution 800
execute if predicate lqe:evolution/min/6 if score @s lqe.evolution matches ..599 run scoreboard players set @s lqe.evolution 600
execute if predicate lqe:evolution/min/5 if score @s lqe.evolution matches ..399 run scoreboard players set @s lqe.evolution 400
execute if predicate lqe:evolution/min/4 if score @s lqe.evolution matches ..299 run scoreboard players set @s lqe.evolution 300
execute if predicate lqe:evolution/min/3 if score @s lqe.evolution matches ..199 run scoreboard players set @s lqe.evolution 200
execute if predicate lqe:evolution/min/2 if score @s lqe.evolution matches ..99 run scoreboard players set @s lqe.evolution 100
# Fix player's Evolution counter if they're using a lower level weapon than before
execute if predicate lqe:evolution/max/1 if score @s lqe.evolution matches 100.. run scoreboard players set @s lqe.evolution 0
execute if predicate lqe:evolution/max/2 if score @s lqe.evolution matches 200.. run scoreboard players set @s lqe.evolution 100
execute if predicate lqe:evolution/max/3 if score @s lqe.evolution matches 300.. run scoreboard players set @s lqe.evolution 200
execute if predicate lqe:evolution/max/4 if score @s lqe.evolution matches 400.. run scoreboard players set @s lqe.evolution 300
execute if predicate lqe:evolution/max/5 if score @s lqe.evolution matches 600.. run scoreboard players set @s lqe.evolution 400
execute if predicate lqe:evolution/max/6 if score @s lqe.evolution matches 800.. run scoreboard players set @s lqe.evolution 600
execute if predicate lqe:evolution/max/7 if score @s lqe.evolution matches 1000.. run scoreboard players set @s lqe.evolution 800
execute if predicate lqe:evolution/max/8 if score @s lqe.evolution matches 1250.. run scoreboard players set @s lqe.evolution 1000
execute if predicate lqe:evolution/max/9 if score @s lqe.evolution matches 1500.. run scoreboard players set @s lqe.evolution 1250