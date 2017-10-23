#Tortoise racing
proc race*(v1, v2, g: int): array[0..2, int] =
  if v1 >= v2:
    return [-1,-1,-1]
  var t = 3600 * g div (v2-v1)
  return  [t div 3600, (t mod 3600) div 60, (t mod 3600) mod 60]
