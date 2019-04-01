import Foundation

var pizzaInInches: Int = 10 {
    willSet {
        //newValue variable to access the value that got changes
        
    }
    didSet {  //It has preset variable
            //name oldValue
        if pizzaInInches >= 18 {
            print("Invalid size specified, pizza inches set to 18.")
            pizzaInInches = 18
        }
    }
}

pizzaInInches = 33
print(pizzaInInches)

var numberOfPeople: Int = 12
let slicesPerPerson: Int = 4

var numberOfSlices: Int {
    get{
        return pizzaInInches - 4
    }
    set{
        print("It has new value of \(newValue)")
    }
    
}
let a = numberOfSlices - 2

print(numberOfSlices)

var numberOfPizza: Int {
    get{
        let numberOfPeopleFedPerPizza = numberOfSlices / slicesPerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    set{
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices / slicesPerPerson
    }
}

print(numberOfPizza)

numberOfPizza = 6
print("Number of People: ", numberOfPeople )


/////ADVANCES SWIFT PART 2/////

