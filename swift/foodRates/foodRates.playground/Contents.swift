/*
 Food ratings
 
 Given a list of N dishes ids with ratings find the best dish.
 
 Rate range: 1...5
 
 Test cases:
 Calculate the average of dished by Id to get the unique rate per dish.
 In case many dishes has equal rate return the minor dish id.
 */

func findBestDish(by ratings: [[Int]]) -> Int {
    var averageRating: [Int: Int] = [:]
    ratings.forEach {
        let dishId = $0[0]
        let foodRating = $0[1]
        
        if var existingAvergae = averageRating[dishId] {
            averageRating[dishId] = (existingAvergae + foodRating) / 2
        } else {
            averageRating[dishId] = foodRating
        }
    }
    
    var maxAverage = 0
    var bestDishId = 0
    averageRating.forEach {
        if $0.value >= maxAverage || $0.key < bestDishId {
            maxAverage = $0.value
            bestDishId = $0.key
        }
    }
    
    return bestDishId
}

let testRatings = [[532, 4], [123, 1], [123, 5], [123, 5], [532, 3], [121, 5]]
findBestDish(by: testRatings)



