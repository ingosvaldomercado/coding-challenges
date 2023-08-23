import UIKit

extension Int {
    
    var isModuleof5: Bool {
        self % 5 == 0
    }
}

// Complete the gradingStudents function below.
func studentsRounding(grades: [Int]) -> [Int] {
    let result = grades.map { grade in
        if grade < 38 || grade.isModuleof5 {
            return grade
        }
        
        let module = grade % 5
        let nextMultiple = grade - module + 5
        
        let diff = nextMultiple - grade
        
        if diff < 3 {
            return nextMultiple
        }
        
        return grade
    }
    
    return result
}

let grades = [73, 67, 38, 33]
let result = studentsRounding(grades: grades)

