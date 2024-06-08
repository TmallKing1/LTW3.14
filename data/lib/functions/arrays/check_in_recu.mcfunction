execute unless data storage lib:arrays TargetArray[0] run return 0
execute store result score $extracted_value mem run data get storage lib:arrays TargetArray[0]
data remove storage lib:arrays TargetArray[0]
execute if score $extracted_value mem = $value mem run return 1
return run function lib:arrays/check_in_recu