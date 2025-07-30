data modify entity @s data.test set value 1
execute if data entity @s data.index run function dc:construct/index with entity @s data

#生成模型
## 特判：如果当前方块为楼梯，则向上一格生成
execute unless data entity @s data.test unless block ~ ~ ~ #stairs run function dc:construct/summon
execute unless data entity @s data.test if block ~ ~ ~ #stairs positioned ~ ~1 ~ run function dc:construct/summon

tag @a remove dc_player
kill @s

