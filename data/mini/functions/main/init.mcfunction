# 初始化
function mini:parkour_old/init
function mini:tntrun/init
function mini:hotpm/init
function mini:phantom/init
function mini:zombie/init
function mini:river/init
function mini:bullet/init
function mini:boomer/init
function mini:chain/init
function mini:vase/init

function mini:iron/init
function mini:trade/init
function mini:diamond/init
function mini:hopper/init
function mini:bingo/init

function mini:ass/init
function mini:arrow/init

function mini:duckrush/init
function mini:element/init
function mini:power/init

# 计分板初始化
scoreboard objectives remove mini_score
scoreboard objectives add mini_score dummy "小游戏积分"
scoreboard objectives remove mini_heart
scoreboard objectives add mini_heart dummy "生命"
scoreboard objectives remove mini_heart_disp
scoreboard objectives add mini_heart_disp dummy "生命"
scoreboard objectives modify mini_heart_disp rendertype hearts
