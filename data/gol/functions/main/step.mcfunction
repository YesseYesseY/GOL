execute store result storage st_pos x int 1 run scoreboard players get Data BoardPosX
execute store result storage st_pos y int 1 run scoreboard players get Data BoardPosY
execute store result storage st_pos z int 1 run scoreboard players get Data BoardPosZ
function gol:step/exec with storage st_pos
function gol:main/update