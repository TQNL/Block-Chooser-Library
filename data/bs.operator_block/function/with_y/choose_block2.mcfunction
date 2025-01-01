# check if these random coords are desirable
$execute positioned $(x) $(y) $(z) if blocks ~ ~ ~ ~ ~ ~ ~1 ~ ~ all run return 1

# not, so increment counter and redo
scoreboard players add #bs.obc.choose_block_counter bs.operator_block 1
function bs.operator_block:with_y/choose_block1
