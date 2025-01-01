execute if score #bs.obc.wh bs.operator_block matches -2032.. run scoreboard players add #bs.obc.wh bs.operator_block 16
execute unless score #bs.obc.wh bs.operator_block matches -2032.. run scoreboard players set #bs.obc.wh bs.operator_block -2032
execute store result storage bs.operator_block:choose_block coords.y int 1 run scoreboard players get #bs.obc.wh bs.operator_block

execute if function bs.operator_block:init_w_h run return run function bs.operator_block:with_y/choose_block1

function bs.operator_block:world_height
