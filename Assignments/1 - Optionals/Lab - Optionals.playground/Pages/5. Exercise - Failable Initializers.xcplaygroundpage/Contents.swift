/*:
## Exercise - Failable Initializers

 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2020.
 */
struct Computer {
    let ram: Int
    let yearManufactured: Int
    
    init?(ram: Int, yearManufactured: Int) {
        if !(ram > 0 && yearManufactured > 1970 && yearManufactured < 2020) {
            return nil
        }else {
            self.ram = ram
            self.yearManufactured = yearManufactured
        }
    }
}

//:  Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
    let computer1 = Computer(ram: 16, yearManufactured: 2019)
    let computer2 = Computer(ram: 32, yearManufactured: 2025)

    if let computer1 = computer1 {
        print("Ram: \(computer1.ram), Year Manufactured: \(computer1.yearManufactured)")
    }else{
        print("No computer created")
    }

    if let computer2 = computer2{
        print("Ram: \(computer2.ram), Year Manufactured: \(computer2.yearManufactured)")
    }else{
        print("No computer created")
    }

/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
 */
