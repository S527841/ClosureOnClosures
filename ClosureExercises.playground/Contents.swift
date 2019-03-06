import UIKit

// Answer each question in the space that follows it. Most of these questions involve closures, a few are just to test verify your knowledge of other subjects.


// 0. Write a Void function, fillIt(n:min:max:data:) with 4 parameters, n, min, max and data. The first 3 will be Ints, the 4th an [Int]. It will cause the 4th parameter to be filled with n Ints, between min and max inclusive, generated at random. Hint: For a parameter to changer its value, as data does, it must include a keyword that we talked about in the first 2 weeks or so of class.
func fillIt(n:Int,min:Int,max:Int,data:[Int]){
    
}
// 1. Invoke fillIt() with values 15, 5, 10 -- and pass in data as well

//fillIt(n: 15, min: 5, max: 10, data: [Int])


// 2. Create a struct, Mouse, with stored properties for x, y, and batteryLife, all Doubles. x and y can have any value, batteryLife should print a warning message if the value being assigned is outside the range 0.0-5.0 inclusive (hint: look at at the Restaurant class covered in class on 26 Feb). Mouse should adhere to the Equatable and CustomStringConvertible protocols. Two Mice are equal if they have the same property values. Implement CustomStringConvertible so it prints out a String that looks like the following (replace numbers with actual values, to 1 decimal, and use "Good" if battery life is at least 2.5, "Poor" otherwise:
//
//  Position: (5.0, 3.0), Battery Life: Good

struct Mouse : CustomStringConvertible, Equatable {
    
    var name:String
    var x:Double
    var y:Double
    var batteryLife:Double {
        willSet {
            if newValue < 0.0 || newValue > 5.0 {
                print("That value is outside of range, please enter a value between 0.0 and 5.0")
            }
        }
    }
    
    static func == (lhs: Mouse, rhs: Mouse) -> Bool {
        return lhs.name == rhs.name
    }
    
    var batlife:String {
        if batteryLife >= 2.5 {
            return "Good"
        } else if batteryLife < 2.5 {
            return "Poor"
        } else {
            return "Poor"
        }
        return "Dead Battery"
    }
    
    var description: String {
        return "Position: \(x), \(y), Battery Life: \(batlife)"
    }
    
}

// 3. Store three Mice in an array, cage (sorry, Mice). Make the first and third elements equal, with a batteryLife == 5.0, the middle one with a value 2.0

var cage:[Mouse] = [
    Mouse(name: "Chase", x: 2.0, y: 1.8, batteryLife: 5.0),
    Mouse(name: "James", x: 4.2, y: 4.3, batteryLife: 2.0),
    Mouse(name: "Chase", x: 2.0, y: 1.8, batteryLife: 5.0),
    Mouse(name: "Mike", x: 5.0, y: 5.0, batteryLife: 0.0),
    Mouse(name: "David", x: 1.2, y: 3.3, batteryLife: 3.7)
]


// 4. See if cage contains a Mouse with the same values as cage[1] -- print out true if it does, false otherwise. Hint: Remember that arrays define the contains() method ... it's that easy!

if (cage[0] == cage[2]) {
    print("True")
} else {
    print ("False")
}

// 5. Write a function, quadrant(mouse:) to return a String "NE", "NW", "SE", "SW" or "ON AXIS" depending on where a Mouse is positioned relative to the origin. (e.g., if it is in the top-right quadrant, return "NE"; top-left quadrant, "NW"; bottom-left quadrant, "SW"; bottom-right quadrant, "SE". [You have already done a question like this.]

func quadrant(cage:[Mouse], x:Double, y:Double) -> String {
    if x > 2.5 && y > 2.5 {
        print("Mouse is in quadrant NE")
        
    } else if x > 2.5 && y < 2.5 {
        print("Mouse is in quadrant SE")
        
    } else if x < 2.5 && y < 2.5 {
        print("Mouse is in quadrant SW")
        
    } else if x < 2.5 && y > 2.5 {
        print("Mouse is in quadrant NW")
    }
    return ("ON AXIS")
}



// 6. Assign new values to cage so its first Mouse is in NE, second in NW, third in SW, fourth in SE and 5th on an axis

cage[0].x == 3.0
cage[0].y == 3.0
cage[1].x == 2.3
cage[1].y == 2.7
cage[2].x == 1.2
cage[2].y == 1.0
cage[3].y == 2.0
cage[4].x == 2.5
cage[4].y == 2.5

// 7. Map cage using quadrant, and print out the resulting array. [Hint: look at the map() function examples that you did in class on 28 Feb]

let mice = cage.map({$0})
print(mice)


// 8. Sort the elements of cage in increasing order of batteryLife, and print out the result. [Hint: See the sort(by:) example done in class on 28 Feb]



// 9. Write a method, splitter(data:classifier:) that will take an array of Ints, data, and a closure, classifier, that accepts an Int and returns a Bool. It will return a new array in whch all the elements for which the closure returned false will precede those elements for which the closure returned true.

// For example, if data were [10, 15, 20, 23], and classifier returned true if an element were *even*, then splitter() would return (15, 23, 10, 20)

// Only use basic Swift programming constructs. Do not use any other function calls other than classsifier() and append()








// 10. Invoke splitter(), using data = [10, 15, 20, 23] and a classifier that returns true if an element is even. Print out the returned result.





// 11. Write a function, palindromic(num:) that will return true if its parameter, an Int, is palindromic (it reads the same backwards as forwards). For example "1221" is palindromic, whereas "1223" is not. [Hint: Convert an Int into a String. Then reverse it, and see if the two are equal.]




// 12. Fill an array, aThou, with the numbers 1 ... 500 inclusive





// 13. Use filter to return those values that are palindromic


