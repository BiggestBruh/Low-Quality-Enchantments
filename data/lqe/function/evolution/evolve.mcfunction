# Increment the Evolution counter for this attack
scoreboard players add @s lqe.evolution 1

# Update the Evolution level according to the attack count
execute if score @s lqe.evolution matches 500 run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5
execute if score @s lqe.evolution matches 500 run item modify entity @s weapon.mainhand lqe:evolution/2

execute if score @s lqe.evolution matches 1000 run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.7
execute if score @s lqe.evolution matches 1000 run item modify entity @s weapon.mainhand lqe:evolution/3


execute if score @s lqe.evolution matches 1500 run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.9
execute if score @s lqe.evolution matches 1500 run item modify entity @s weapon.mainhand lqe:evolution/4


execute if score @s lqe.evolution matches 2000 run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.7
execute if score @s lqe.evolution matches 2000 run item modify entity @s weapon.mainhand lqe:evolution/5


execute if score @s lqe.evolution matches 3000 run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.75
execute if score @s lqe.evolution matches 3000 run item modify entity @s weapon.mainhand lqe:evolution/6


execute if score @s lqe.evolution matches 4000 run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.8
execute if score @s lqe.evolution matches 4000 run item modify entity @s weapon.mainhand lqe:evolution/7


execute if score @s lqe.evolution matches 5000 run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.85
execute if score @s lqe.evolution matches 5000 run item modify entity @s weapon.mainhand lqe:evolution/8


execute if score @s lqe.evolution matches 7500 run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.9
execute if score @s lqe.evolution matches 7500 run item modify entity @s weapon.mainhand lqe:evolution/9


execute if score @s lqe.evolution matches 10000 run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1.0
execute if score @s lqe.evolution matches 10000 run item modify entity @s weapon.mainhand lqe:evolution/10
