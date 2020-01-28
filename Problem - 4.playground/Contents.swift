/*
 This problem was asked by Stripe.

 Given an array of integers, find the first missing positive integer in linear time and constant space. In other words, find the lowest positive integer that does not exist in the array. The array can contain duplicates and negative numbers as well.

 For example, the input [3, 4, -1, 1] should give 2. The input [1, 2, 0] should give 3.

 You can modify the input array in-place.
 */

let inputArray = [1, 8, -1, 9, 21, 13, -7, 2, 3, 4, 4, 5]
var missingMinPosInt = 0

var minPosInt = inputArray.min { a, b in a < b && a > 0 }!
var possiblemissingPosInt = minPosInt

if inputArray.contains(possiblemissingPosInt+1)  {
    possiblemissingPosInt += 1
} else {
    missingMinPosInt = possiblemissingPosInt
}

print(missingMinPosInt)