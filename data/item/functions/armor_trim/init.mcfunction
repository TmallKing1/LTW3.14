#define storage item:armor
data modify storage item:armor Types set value ["coast","dune","eye","host","raiser","rib","sentry","shaper","silence","snout","spire","tide","vex","ward","wayfinder","wild"]
data modify storage item:armor Materials set value ["amethyst","quartz","gold","emerald","copper","iron","lapis","diamond","netherite","redstone"]
data modify storage item:armor ArmorMaterials set value ["turtle","leather","chainmail","iron","gold","diamond","netherite"]

# 初始化记分板
scoreboard objectives add trim_turtle dummy "盔甲纹饰-海龟头"
scoreboard objectives add trim_leather dummy "盔甲纹饰-皮革"
scoreboard objectives add trim_chainmail dummy "盔甲纹饰-锁链"
scoreboard objectives add trim_iron dummy "盔甲纹饰-铁"
scoreboard objectives add trim_gold dummy "盔甲纹饰-金"
scoreboard objectives add trim_diamond dummy "盔甲纹饰-钻石"
scoreboard objectives add trim_netherite dummy "盔甲纹饰-下界合金"
scoreboard objectives add trim_has dummy "拥有锻造模板"
scoreboard objectives add trim_hasmat dummy "拥有材料"
scoreboard objectives add trim_edit dummy "盔甲纹饰编辑-锻造模板"
scoreboard objectives add trim_editmat dummy "盔甲纹饰编辑-纹饰材料"
scoreboard objectives add trim_boolean dummy "布尔值存储"