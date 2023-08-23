//Given a cyclic array, write a function to reverse from any k number (where k is an input to the function). You can also treat this as elements in an array
//Example:
//Input: [1,2,3,4,5,6,7,8] K = 3
//Output: [3,2,1,8,7,6,5,4]
//Input: [1,2,3,4,5,6,7,8] K = 5
//Output: [5,4,3,2,1,8,7,6]
//N.B: Treat the input and output as an array

func reverseNumber(_ array: [Int], k: Int) -> [Int] {
    guard let index = array.firstIndex(of: k) else {
        return []
    }

    let beforeIndex = Array(array[0...index].reversed())
    let afterIndex = index + 1 < array.count ? Array(array[index + 1...array.count - 1].reversed()) : []
    return beforeIndex + afterIndex
}

let testArray = [1,2,3,4,5,6,7,8]
let index = 8
reverseNumber(testArray, k: index)

