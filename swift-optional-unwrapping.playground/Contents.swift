import UIKit

// Force Unwrapping
var firstName: String?
firstName = "Arthur"
print(firstName!)

//Optional Binding
var number1: Int?
number1 = 5

print("Not unwrapped: \(number1)")

if let number = number1 {
    print("unwrapped by if let: \(number)")
}

func sayi() {
    guard let number = number1 else {
        print("Error")
        return
    }
    print("unwrapped by guard let: \(number)")
}

sayi()

// nil coalescing
print(number1 ?? 0)

// optional chaining
class Person {
    var name: String
    var pet: Pet?   // opsiyonel
    
    init(name: String, pet: Pet?) {
        self.name = name
        self.pet = pet
    }
}

class Pet {
    var type: String
    
    init(type: String) {
        self.type = type
    }
}

// Ali'nin köpeği var
let ali = Person(name: "Ali", pet: Pet(type: "Köpek"))

// Ayşe'nin hayvanı yok
let ayse = Person(name: "Ayşe", pet: nil)

// Optional chaining + nil coalescing
print(ali.pet?.type ?? "Pet yok")   // Optional("Köpek")
print(ayse.pet?.type ?? "Pet yok")  // nil

