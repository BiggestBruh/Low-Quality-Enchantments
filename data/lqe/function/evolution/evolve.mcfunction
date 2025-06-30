# Increment the Evolution counter for this attack
scoreboard players add @s lqe.evolution 1

# Update the Evolution level according to the attack count
execute if score @s lqe.evolution matches 100 run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5
execute if score @s lqe.evolution matches 100 run item modify entity @s weapon.mainhand lqe:evolution/2

execute if score @s lqe.evolution matches 200 run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.7
execute if score @s lqe.evolution matches 200 run item modify entity @s weapon.mainhand lqe:evolution/3


execute if score @s lqe.evolution matches 300 run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.9
execute if score @s lqe.evolution matches 300 run item modify entity @s weapon.mainhand lqe:evolution/4


execute if score @s lqe.evolution matches 400 run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.7
execute if score @s lqe.evolution matches 400 run item modify entity @s weapon.mainhand lqe:evolution/5


execute if score @s lqe.evolution matches 600 run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.75
execute if score @s lqe.evolution matches 600 run item modify entity @s weapon.mainhand lqe:evolution/6


execute if score @s lqe.evolution matches 800 run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.8
execute if score @s lqe.evolution matches 800 run item modify entity @s weapon.mainhand lqe:evolution/7


execute if score @s lqe.evolution matches 1000 run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.85
execute if score @s lqe.evolution matches 1000 run item modify entity @s weapon.mainhand lqe:evolution/8


execute if score @s lqe.evolution matches 1250 run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.9
execute if score @s lqe.evolution matches 1250 run item modify entity @s weapon.mainhand lqe:evolution/9


execute if score @s lqe.evolution matches 1500 run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1.0
execute if score @s lqe.evolution matches 1500 run item modify entity @s weapon.mainhand lqe:evolution/10
