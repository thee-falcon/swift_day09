import UIKit

// normal closuer:
/*
 let team = ["Omar", "Anouar", "Said", "Oussama", "Amine", "Rida"]

 let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
     if name1 == "Omar" {
         return true
     } else if name2 == "Omar" {
         return false
     }

     return name1 < name2
 })

 print(captainFirstTeam)
 */

// trailing closure and short hand syntax:

let team = ["Omar", "Anouar", "Said", "Oussama", "Amine", "Rida"]

let captainFirstTeam = team.sorted {
    if $0 == "Omar" {
        return (true)
    } else if $1 == "Omar" {
        return (false)
    }
    return ($0 < $1)
}

let reversTeam = team.sorted { $0 < $1 }
print(reversTeam)

let tOnly = team.filter{ $0.hasPrefix("T") }
print(tOnly)

let upperCaseTeam = team.map{ $0.uppercased() }
print(upperCaseTeam)
