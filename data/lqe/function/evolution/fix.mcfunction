# Fix player's Evolution counter if they're using a higher level weapon than before
execute if predicate lqe:evolution/min/10 if score @s lqe.evolution matches ..9999 run scoreboard players set @s lqe.evolution 10000
execute if predicate lqe:evolution/min/9 if score @s lqe.evolution matches ..7499 run scoreboard players set @s lqe.evolution 7500
execute if predicate lqe:evolution/min/8 if score @s lqe.evolution matches ..4999 run scoreboard players set @s lqe.evolution 5000
execute if predicate lqe:evolution/min/7 if score @s lqe.evolution matches ..3999 run scoreboard players set @s lqe.evolution 4000
execute if predicate lqe:evolution/min/6 if score @s lqe.evolution matches ..2999 run scoreboard players set @s lqe.evolution 3000
execute if predicate lqe:evolution/min/5 if score @s lqe.evolution matches ..1999 run scoreboard players set @s lqe.evolution 2000
execute if predicate lqe:evolution/min/4 if score @s lqe.evolution matches ..1499 run scoreboard players set @s lqe.evolution 1500
execute if predicate lqe:evolution/min/3 if score @s lqe.evolution matches ..999 run scoreboard players set @s lqe.evolution 1000
execute if predicate lqe:evolution/min/2 if score @s lqe.evolution matches ..499 run scoreboard players set @s lqe.evolution 500
# Fix player's Evolution counter if they're using a lower level weapon than before
execute if predicate lqe:evolution/max/1 if score @s lqe.evolution matches 500.. run scoreboard players set @s lqe.evolution 0
execute if predicate lqe:evolution/max/2 if score @s lqe.evolution matches 1000.. run scoreboard players set @s lqe.evolution 500
execute if predicate lqe:evolution/max/3 if score @s lqe.evolution matches 1500.. run scoreboard players set @s lqe.evolution 1000
execute if predicate lqe:evolution/max/4 if score @s lqe.evolution matches 2000.. run scoreboard players set @s lqe.evolution 1500
execute if predicate lqe:evolution/max/5 if score @s lqe.evolution matches 3000.. run scoreboard players set @s lqe.evolution 2000
execute if predicate lqe:evolution/max/6 if score @s lqe.evolution matches 4000.. run scoreboard players set @s lqe.evolution 3000
execute if predicate lqe:evolution/max/7 if score @s lqe.evolution matches 5000.. run scoreboard players set @s lqe.evolution 4000
execute if predicate lqe:evolution/max/8 if score @s lqe.evolution matches 7500.. run scoreboard players set @s lqe.evolution 5000
execute if predicate lqe:evolution/max/9 if score @s lqe.evolution matches 10000.. run scoreboard players set @s lqe.evolution 7500