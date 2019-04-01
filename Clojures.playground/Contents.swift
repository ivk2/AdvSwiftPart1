func calculator(n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1,n2)
}

func add(n1: Int, n2: Int)->Int{
    return n1 + n2
}




calculator(n1: 3, n2: 4, operation: add)

//Uses function as return type

//clojure: remove func and the name of the function
calculator(n1: 3, n2: 4, operation: { (n01: Int, no2: Int)->Int in
    return n01 + no2
})

//Shorter version
calculator(n1: 3, n2: 4, operation: { (no1, no2) in no1 + no2 })

let array1 = [6,2,3,9,4,1]

array1.map({ (n1 : Int) in n1 + 1} )
