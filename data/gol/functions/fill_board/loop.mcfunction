# tellraw @a [{"score":{"name":"Data","objective":"FillLoop1"}},{"text":" "},{"score":{"name":"Data","objective":"FillLoop2"}}]

$execute if score Data Board_$(loop1)_$(loop2) matches 0 run setblock ~$(loop1) ~$(loop2) ~ minecraft:white_wool
$execute unless score Data Board_$(loop1)_$(loop2) matches 0 run setblock ~$(loop1) ~$(loop2) ~ minecraft:black_wool

scoreboard players remove Data FillLoop1 1
execute if score Data FillLoop1 matches 0 if score Data FillLoop2 matches 1.. run scoreboard players remove Data FillLoop2 1
execute if score Data FillLoop1 matches 0 if score Data FillLoop2 matches 1.. run scoreboard players operation Data FillLoop1 = Data BoardSize

execute store result storage fill_board_data loop1 int 1 run scoreboard players get Data FillLoop1
execute store result storage fill_board_data loop2 int 1 run scoreboard players get Data FillLoop2
execute if score Data FillLoop1 matches 1.. if score Data FillLoop2 matches 1.. run function gol:fill_board/loop with storage fill_board_data
