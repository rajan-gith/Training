a = [1,2,3,45,["a","b","c"]]
arr_m = [[1,2,3],[4,5,6],[7,8,9]]
p a
p arr_m

p a.flatten # flatten takes multi dimensional array and return single dimenstional array
p arr_m.flatten

new_arr = [[1,2,3],[4,5,6],[7,8,9],a]
p new_arr.flatten(1) # the argument in flatten is the level of flatten