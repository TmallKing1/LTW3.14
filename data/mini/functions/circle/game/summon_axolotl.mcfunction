# 随机选择生成的变体
execute store result score $random mem run random value 0..100
execute if score $random mem matches 1..40 run summon axolotl ~ ~ ~ {Variant: 0, Tags: ["circle_entity"]}
execute if score $random mem matches 41..60 run summon axolotl ~ ~ ~ {Variant: 1, Tags: ["circle_entity"]}
execute if score $random mem matches 61..75 run summon axolotl ~ ~ ~ {Variant: 2, Tags: ["circle_entity"]}
execute if score $random mem matches 76..90 run summon axolotl ~ ~ ~ {Variant: 3, Tags: ["circle_entity"]}
execute if score $random mem matches 91..100 run summon axolotl ~ ~ ~ {Variant: 4, Tags: ["circle_entity"]}