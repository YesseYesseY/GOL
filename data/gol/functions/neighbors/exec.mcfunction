scoreboard objectives add Neighbors dummy
scoreboard players set Data Neighbors 0

scoreboard objectives add NBPosX dummy
scoreboard objectives add NBPosY dummy
scoreboard objectives add NBPosZ dummy

scoreboard players set Data NBPosX 0
scoreboard players set Data NBPosY 0
scoreboard players set Data NBPosZ 0

scoreboard players operation Data NBPosX = Data BoardPosX 
scoreboard players operation Data NBPosY = Data BoardPosY 
scoreboard players operation Data NBPosZ = Data BoardPosZ 

$scoreboard players add Data NBPosX $(x)
$scoreboard players add Data NBPosY $(y)

# up mid
scoreboard players add Data NBPosY 1

execute store result storage check_pos x int 1 run scoreboard players get Data NBPosX
execute store result storage check_pos y int 1 run scoreboard players get Data NBPosY
execute store result storage check_pos z int 1 run scoreboard players get Data NBPosZ
execute run function gol:neighbors/check with storage check_pos

# up right
scoreboard players add Data NBPosX 1

execute store result storage check_pos x int 1 run scoreboard players get Data NBPosX
execute store result storage check_pos y int 1 run scoreboard players get Data NBPosY
execute store result storage check_pos z int 1 run scoreboard players get Data NBPosZ
execute run function gol:neighbors/check with storage check_pos

# mid right
scoreboard players remove Data NBPosY 1

execute store result storage check_pos x int 1 run scoreboard players get Data NBPosX
execute store result storage check_pos y int 1 run scoreboard players get Data NBPosY
execute store result storage check_pos z int 1 run scoreboard players get Data NBPosZ
execute run function gol:neighbors/check with storage check_pos

# down right
scoreboard players remove Data NBPosY 1

execute store result storage check_pos x int 1 run scoreboard players get Data NBPosX
execute store result storage check_pos y int 1 run scoreboard players get Data NBPosY
execute store result storage check_pos z int 1 run scoreboard players get Data NBPosZ
execute run function gol:neighbors/check with storage check_pos

# down mid
scoreboard players remove Data NBPosX 1

execute store result storage check_pos x int 1 run scoreboard players get Data NBPosX
execute store result storage check_pos y int 1 run scoreboard players get Data NBPosY
execute store result storage check_pos z int 1 run scoreboard players get Data NBPosZ
execute run function gol:neighbors/check with storage check_pos

# down left
scoreboard players remove Data NBPosX 1

execute store result storage check_pos x int 1 run scoreboard players get Data NBPosX
execute store result storage check_pos y int 1 run scoreboard players get Data NBPosY
execute store result storage check_pos z int 1 run scoreboard players get Data NBPosZ
execute run function gol:neighbors/check with storage check_pos

# mid left
scoreboard players add Data NBPosY 1

execute store result storage check_pos x int 1 run scoreboard players get Data NBPosX
execute store result storage check_pos y int 1 run scoreboard players get Data NBPosY
execute store result storage check_pos z int 1 run scoreboard players get Data NBPosZ
execute run function gol:neighbors/check with storage check_pos

# up left
scoreboard players add Data NBPosY 1

execute store result storage check_pos x int 1 run scoreboard players get Data NBPosX
execute store result storage check_pos y int 1 run scoreboard players get Data NBPosY
execute store result storage check_pos z int 1 run scoreboard players get Data NBPosZ
execute run function gol:neighbors/check with storage check_pos

