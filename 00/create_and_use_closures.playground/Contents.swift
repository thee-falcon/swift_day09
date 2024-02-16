import UIKit

// to create a copy of function

func    greetUser() {
    print("Hi, there!")
}

greetUser()

// to copy greetUser to greetCopy, you should not use Brackets
// Closure Assignment:
var greetCopy = greetUser
greetCopy()

func    getUserData(for id: Int) -> String {
    if id == 1999 {
        return ("Omar Makran")
    } else {
        return ("Anonymous")
    }
}

// Closure Assignment:
// creating a closure (data) that has the same signature as the getUserData function
let data: (Int) -> String = getUserData
//  invokes the closure with the argument 1999
let user = data(1999)
print(user)

func    captainFirstSorted(name1: String, name2: String) -> Bool {
    print("name1:",name1)
    print("name2: \(name2)")
    if name1 == "Omar" {
        return (true)
    } else if name2 == "Said" {
        return (false)
    }
    return (name1 < name2)
}

//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam)

let team = ["Oussama", "Anouar", "Omar", "Said", "Amine"]
// This keyword separates the parameter and return type section from the body of the closure.
let capitainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Omar" {
        return (true)
    } else if name2 == "Said" {
        return (false)
    }
    return (name1 < name2)
})

print(capitainFirstTeam)
