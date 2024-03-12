scoreboard objectives add FillLoop1 dummy
scoreboard objectives add FillLoop2 dummy

scoreboard players operation Data FillLoop1 = Data BoardSize
scoreboard players operation Data FillLoop2 = Data BoardSize

execute store result storage fill_board_data loop1 int 1 run scoreboard players get Data FillLoop1
execute store result storage fill_board_data loop2 int 1 run scoreboard players get Data FillLoop2
$execute positioned $(x) $(y) $(z) run function gol:fill_board/loop with storage fill_board_data