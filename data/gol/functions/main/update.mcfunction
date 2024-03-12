execute store result storage fill_pos x int 1 run scoreboard players get Data BoardPosX
execute store result storage fill_pos y int 1 run scoreboard players get Data BoardPosY
execute store result storage fill_pos z int 1 run scoreboard players get Data BoardPosZ
execute run function gol:fill_board/exec with storage fill_pos