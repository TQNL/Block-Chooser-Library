# Block Chooser Library
Sometimes, Data Packs need to have a physical block in the world to perform operations on for a tick. This is frustrating, since you don't want to grief the world, so you have to 'remember' the block you are using to place that block back once the data pack is done with it (in the same tick).

In Minecraft data packs, block information can be retrieved using three methods:
1. Arrow Method: Use `inBlockState` NBT; fails for non-collidable blocks and takes 1 tick.  
2. Loot Mine: Drop block as item; unreliable with custom loot tables or missing loot data.  
3. Hardcoding: Predefine all blocks and states; most reliable.

Libraries like Bookshelf (Gunivers) or BlockSate (Triton365) achieve the third method, but I wanted to use a light-weight solution. My idea of this is to replace the block by cloning the block next to it, since the bedrock layer at y = -64 is all bedrock, but that might not always work:
- the world or dimension could have altered world heights;
- the bedrock layer could be changed
- the choosen coordinates could already be in use

Quite a bit of this Data Pack Library focusses on checking of the block to the east (+X) is the same block, which might fail if the other Data Pack uses more than one block, but even if there is a data pack that for some wierd reason has to do that, at that point just accept it tbh.

Here is a flowchart of all the functions in this Data Pack, so you can see how the solution is implemented:

![Block Chooser Library flowchart](https://github.com/user-attachments/assets/5dc72c57-9086-482c-9404-a33a06f72a74)
