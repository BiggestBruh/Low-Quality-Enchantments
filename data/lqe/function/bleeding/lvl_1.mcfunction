# Count the armor pieces worn by the entity
scoreboard players set @s lqe.bleeding.armor 0
execute if predicate lqe:wearing_armor/head run scoreboard players add @s lqe.bleeding.armor 1
execute if predicate lqe:wearing_armor/chest run scoreboard players add @s lqe.bleeding.armor 1
execute if predicate lqe:wearing_armor/leg run scoreboard players add @s lqe.bleeding.armor 1
execute if predicate lqe:wearing_armor/foot run scoreboard players add @s lqe.bleeding.armor 1
# For horses and wolves, wearing horse/wolf armor has the same effectiveness as a full armor set
execute if predicate lqe:wearing_armor/body run scoreboard players add @s lqe.bleeding.armor 4

# Set a timer to track the duration of the bleeding effect, reduced by 1 second for each armor piece worn
scoreboard players set @s[type=!#lqe:immune_to_bleeding,scores={lqe.bleeding.armor=0}] lqe.bleeding.1 160
scoreboard players set @s[type=!#lqe:immune_to_bleeding,scores={lqe.bleeding.armor=1}] lqe.bleeding.1 140
scoreboard players set @s[type=!#lqe:immune_to_bleeding,scores={lqe.bleeding.armor=2}] lqe.bleeding.1 120
scoreboard players set @s[type=!#lqe:immune_to_bleeding,scores={lqe.bleeding.armor=3}] lqe.bleeding.1 100
scoreboard players set @s[type=!#lqe:immune_to_bleeding,scores={lqe.bleeding.armor=4..}] lqe.bleeding.1 80