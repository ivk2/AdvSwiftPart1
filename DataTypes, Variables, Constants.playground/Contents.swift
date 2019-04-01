import UIKit

var myAge : Int = 32

myAge = 33

let myName : String = "Iskandar"
let myFullName : String = myName + "Fendi"

// OR you can use "\(myName) \(myFullName)"

let myDetails = "\(myFullName), \(myAge)"


func getHowManyMustang(numberOfMustang: Int){
    print("Number of Mustang is: \(numberOfMustang)")
}

func getPriceBasedOnNumberOfMustang(numberOfCarsMustang: Int) -> Int{
    
    var totalPrice: Int = 0
    
    totalPrice = numberOfCarsMustang * 40000
    
    return totalPrice
    
}

func loveCalculator(firstPerson:String, secondPerson:String) -> String{
    var resultsFinal: String = ""
    
    let loveScore = arc4random_uniform(101)
    print(loveScore)
    if loveScore > 80 {
        resultsFinal = "You match heavily"
    }
    else if loveScore >= 50 && loveScore<=79{
        resultsFinal = "Kinda match"
    }
    else {
        resultsFinal = "Not Match"
    }
    
    return resultsFinal
    
}

//Very Important Concept here
func createSong(_ totalNumberOfSong: Int) -> String{
    
    var lyrics: String = ""
    
    for number in (1...totalNumberOfSong).reversed(){
        let newLine: String = "\n \(number) bottles. \nTake one down and pass it around, \(number-1) bottles of beer on the wall.\n"
        lyrics += newLine
    }
    
    return lyrics
    
}


getHowManyMustang(numberOfMustang: 5)

var price = getPriceBasedOnNumberOfMustang(numberOfCarsMustang: 5)
print(price)

var result = loveCalculator(firstPerson: "Isk", secondPerson: "Stephanie")
print(result)

var theSong = createSong(5)
print(theSong)

//For-loop
for number in 1..<10 where number % 2 == 0{
    print(number)
    print()
}

//Fibonacci, where
func fibonacciNumber(_ until: Int){
    
    //+2 because the first two elements of the array will be default
    var actualSize = until + 2
    var initialArray: Array<Int> = Array(repeating: 0, count: actualSize)
    initialArray[0] = 0
    initialArray[1] = 1
    
    for iteration in 0..<until {
        var currentIndex = iteration + 2
        print("Current Index: \(currentIndex)")
        initialArray[currentIndex] = initialArray[iteration] + initialArray[iteration+1]
        print(initialArray[currentIndex])
    }
}

fibonacciNumber(5)

