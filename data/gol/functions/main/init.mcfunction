scoreboard objectives add BoardSize dummy
scoreboard objectives add BoardPosX dummy
scoreboard objectives add BoardPosY dummy
scoreboard objectives add BoardPosZ dummy
scoreboard objectives add NBOffsetX dummy
scoreboard objectives add NBOffsetY dummy


$scoreboard players set Data BoardSize $(Size)
execute store result score Data BoardPosX run data get entity @s Pos[0]
execute store result score Data BoardPosY run data get entity @s Pos[1]
execute store result score Data BoardPosZ run data get entity @s Pos[2]

tellraw @a [{"text":"Board Size: "},{"score":{"name":"Data","objective":"BoardSize"}},{"text":"\nBoard Position: "},{"score":{"name":"Data","objective":"BoardPosX"}},{"text":" "},{"score":{"name":"Data","objective":"BoardPosY"}},{"text":" "},{"score":{"name":"Data","objective":"BoardPosZ"}}]

scoreboard objectives add InitLoop1 dummy
scoreboard objectives add InitLoop2 dummy

$scoreboard players set Data InitLoop1 $(Size)
$scoreboard players set Data InitLoop2 $(Size)

execute run function gol:init/loop
execute run function gol:main/update