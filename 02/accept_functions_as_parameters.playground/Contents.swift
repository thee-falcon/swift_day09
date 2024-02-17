import UIKit

func    makeArraya(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int] ()
    
    for _ in 0 ..< size {
        let newNumbers = generator()
        numbers.append(newNumbers)
    }
    return numbers
}

func    generateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArraya(size: 50, using: generateNumber)
print(newRolls)

func    doImportantWork(first: () ->Void, second: () -> Void, third: () -> Void) {
    print("About the start first work!")
    first()
    print("About the start second work!")
    second()
    print("About the start third work!")
    third()
}

doImportantWork {
    print("This is First Work.")
}second: {
    print("This is Second Work.")
}third: {
    print("This is third Work.")
}
