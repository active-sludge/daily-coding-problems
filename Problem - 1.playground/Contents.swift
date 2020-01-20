/*
 Given a list of numbers and a number k, return whether any two numbers from the list add up to k.
 
 For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.
 
 Bonus: Can you do this in one pass?
 */

let numbers = [9, 15, 3, 7, 8, 12, 1, 5, 4, 10]
let keyNumber = 17

func addUp() -> Bool {
    for i in 0...numbers.count-1 {
        let numbersWithoutTestNumber = numbers.filter {
            $0 != numbers[i]
        }
        
        print(numbers)
        print("First number is \(numbers[i])")
        
        for j in 0...numbersWithoutTestNumber.count-1 {
            
            print(numbersWithoutTestNumber)
            print(numbersWithoutTestNumber[j])
            
            if (numbers[i] + numbersWithoutTestNumber[j]) == keyNumber{
                print("\(numbers[i]) + \(numbersWithoutTestNumber[j]) = \(keyNumber)")
                return true
            } 
        }
    }
    return false
}

addUp()
