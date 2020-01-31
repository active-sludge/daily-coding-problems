/*
 This problem was asked by Stripe.
 
 Given an array of integers, find the first missing positive integer in linear time and constant space. In other words, find the lowest positive integer that does not exist in the array. The array can contain duplicates and negative numbers as well.
 
 For example, the input [3, 4, -1, 1] should give 2. The input [1, 2, 0] should give 3.
 
 You can modify the input array in-place.
 */

let inputArray = [-1,-2,-2,-4,0,7,8,1,2,2,3,3,6,4]
var missingMinPosInt = 1
var onlyPosArray = [Int]()
var possibleMissingPosInt = 0

// Takes only positive elements
for i in 0...inputArray.count-1 {
    if inputArray[i] > 0 {
        onlyPosArray.append(inputArray[i])
    }
}
// If there is no possitive element, result is automatically "1"
if onlyPosArray == [] {
    missingMinPosInt = 1
} else {
    // Orders array from smallest to largest
    for j in 0...onlyPosArray.count-1 {
        for k in j...onlyPosArray.count-1 {
            if onlyPosArray[k] < onlyPosArray[j]  {
                let tempInt = onlyPosArray[j]
                onlyPosArray[j] = onlyPosArray[k]
                onlyPosArray[k] = tempInt
            }
        }
    }
    // If first element of ordered array is not "1" then it's automatically "1"
    if onlyPosArray[0] > 1 {
        missingMinPosInt = 1
    } else if onlyPosArray.count > 1 {
        // Compares every neighbour element with eachother if there is a difference more than 1. If there is, then compared element plus 1 is the missing minimum positive integer.
        for i in 1...onlyPosArray.count-1 {
            if onlyPosArray[i] - onlyPosArray[i-1] > 1 {
                missingMinPosInt = onlyPosArray[i-1] + 1
                break
            } else if  onlyPosArray[i-1] <= 1 {
                // If the array consists of bunch of "1s", then the last one plus 1 is the missing minimum positive integer.
                missingMinPosInt = onlyPosArray[onlyPosArray.count-1] + 1
            }
        }
    } else {
        missingMinPosInt = 2
    }
}

print(missingMinPosInt)
