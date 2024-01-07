#> lib:string/connect3
# 拼接三个可能带双引号的字符串
# @input A 字符串 A
# @input B 字符串 B
# @input C 字符串 C
# @output lib:string Result 拼接后的字符串
#define storage lib:string
$data modify storage lib:string Result set value '$(A)$(B)$(C)'