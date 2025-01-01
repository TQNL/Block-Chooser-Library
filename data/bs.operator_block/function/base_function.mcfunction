# in case these spawn chunks aren't loaded, load them and save their previous loaded state
execute positioned 0 ~ 0 store success score #bs.obc.chunks.0 bs.operator_block if loaded ~ ~ ~ run forceload add ~ ~
execute positioned -1 ~ 0 store success score #bs.obc.chunks.1 bs.operator_block if loaded ~ ~ ~ run forceload add ~ ~
execute positioned 0 ~ -1 store success score #bs.obc.chunks.2 bs.operator_block if loaded ~ ~ ~ run forceload add ~ ~
execute positioned -1 ~ -1 store success score #bs.obc.chunks.3 bs.operator_block if loaded ~ ~ ~ run forceload add ~ ~

# run initial function of this library
function bs.operator_block:initial

# unforceload chunks if needed
execute positioned 0 ~ 0 if score #bs.obc.chunks.0 bs.operator_block matches 1 run forceload remove ~ ~
execute positioned -1 ~ 0 if score #bs.obc.chunks.1 bs.operator_block matches 1 run forceload remove ~ ~
execute positioned 0 ~ -1 if score #bs.obc.chunks.2 bs.operator_block matches 1 run forceload remove ~ ~
execute positioned -1 ~ -1 if score #bs.obc.chunks.3 bs.operator_block matches 1 run forceload remove ~ ~

# clean scores
scoreboard players reset * bs.operator_block
