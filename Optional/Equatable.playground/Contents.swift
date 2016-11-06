//: Playground - noun: a place where people can play

struct Place
{
    let name: String
    let latitude: Double
    let longitude: Double
}

extension Place: Equatable {}

func == (lhs: Place, rhs: Place) -> Bool
{
    let areEqual = lhs.name == rhs.name &&
        lhs.latitude == rhs.latitude &&
        lhs.longitude == rhs.longitude
    
    return areEqual
}

let sf = Place(name: "San Francisco", latitude: 37.7833, longitude: 122.4167)
let sfOptional: Place? = Place(name: "San Francisco", latitude: 37.7833, longitude: 122.4167)
let sfOptional2: Place? = Place(name: "San Francisco", latitude: 37.7833, longitude: 122.4167)
let ny: Place? = Place(name: "New York", latitude: 40.7127, longitude: 74.0059)
let noPlace: Place? = nil
let noPlace2: Place? = nil

sf == sfOptional // true
sfOptional == sfOptional2 // true
sf == sfOptional2 // true
sfOptional2 == sf // true
sf == ny // false
ny == sfOptional2 // false
noPlace == noPlace2 // true
sfOptional == noPlace // false

let a : Int? = 0
let b : Int? = 37
let c : Int? = nil
let d : Int? = 37

a == a
b == b
c == c
b == c
b == d
