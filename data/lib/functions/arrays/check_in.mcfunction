#> lib:arrays/check_in
# 判断一个数值是否在一个数组里，若是则返回1，否则返回0
# @input score $value mem 数值
# @input lib:arrays TargetArray 需要检查的数组（检查过程中会损耗）
#define storage lib:arrays
return run function lib:arrays/check_in_recu