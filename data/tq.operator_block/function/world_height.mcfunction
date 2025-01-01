execute if score #tq.obc.wh tq.operator_block matches -2032.. run scoreboard players add #tq.obc.wh tq.operator_block 16
execute unless score #tq.obc.wh tq.operator_block matches -2032.. run scoreboard players set #tq.obc.wh tq.operator_block -2032
execute store result storage tq.operator_block:choose_block coords.y int 1 run scoreboard players get #tq.obc.wh tq.operator_block

execute if function tq.operator_block:init_w_h run return run function tq.operator_block:with_y/choose_block1

function tq.operator_block:world_height
