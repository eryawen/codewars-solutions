//Sum of two lowest positive integers
func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
  var min1 = array[0]
  var min2 = array[1]
  
  for i in 2...array.count-1 {
    if array[i] < 0 { continue }
    if min2 < min1 { 
      (min1, min2) = (min2, min1) 
    }    
    if array[i] < min2 {
      min2 = array[i]
    }    
  } 
  return min1 + min2    
}
