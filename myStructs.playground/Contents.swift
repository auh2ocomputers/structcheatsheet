import UIKit

//the struct keyword is used to create a struct.  Struct definiton names start with a capital letter. This setup is very similar to setting up a class.
struct Lot {
    //define your variables and functions below.
    var name:String
    var typeOfAttraction:String
    var sqFootage:Double
    var avgPrice:Double
    //you don't have to create an initializer in a struct.  it does it for you.
    //functions are declared in much the same way in structs as they are in classes.
    func getNameAndPrice () -> String {
        return "\(name), $\(avgPrice)"
    }
    //notice the mutating keyword before the func keyword.  this tells you and Xcode that this function will mutate (change) the value of a variable in the struct.  This is required when changing variables or you'll get an error.
    mutating func setAvgPrice(newPrice:Double){
        avgPrice=newPrice
    }
}
//we initialize an instance of our struct
var lot142 = Lot(name: "Tiny Fountain Show", typeOfAttraction: "Visual Show", sqFootage: 100.45, avgPrice: 0.00)
//we call the function that prints the name and price.
print(lot142.getNameAndPrice())
//we call the function that sets the price (mutates one of the variables)
lot142.setAvgPrice(newPrice: 20.0)
//we print out the name and price again to show the change.
print(lot142.getNameAndPrice())

//structs are value types, not reference types.  if you to x=y you get a copy of y, not a pointer to the location in memory of y.  The code below illustrates this concept.
//set new variable to equal our original struct instance
var lot578 = lot142
//print out the name and price, showing the same value as we just saw in the original struct instance
print(lot578.getNameAndPrice())
//set a new average price for the new variable
lot578.setAvgPrice(newPrice: 0.00)
//print out both variables.  notice they have different prices even though we started out by creating one as equal to the other.  this is value type in action.
print(lot142.getNameAndPrice())
print(lot578.getNameAndPrice())
//keep coding.  you're doing great!
