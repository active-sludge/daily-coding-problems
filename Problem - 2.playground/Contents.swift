/*
 This problem was asked by Uber.
 
 Given an array of integers, return a new array such that each element at index i of the new array is the product of all the numbers in the original array except the one at i.
 
 For example, if our input was [1, 2, 3, 4, 5], the expected output would be [120, 60, 40, 30, 24]. If our input was [3, 2, 1], the expected output would be [2, 3, 6].
 
 Follow-up: what if you can't use division?
 */

let originalArray = [1,2,3,4,5]

var tempArray = originalArray
var resultArray = originalArray

for i in 0...originalArray.count-1 {
    tempArray[i] = 1
    let product = tempArray.reduce(1, {x, y in  x * y})
    resultArray[i] = product
    tempArray = originalArray
}

print(resultArray)
