import UIKit

//Enumerations
enum SomeEnumeration{
    //Aquí va la definición del enumerado
}


enum CompassPoint
{
    case north
    case south
    case east
    case west
}

enum Planet
{
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var directionToGo = CompassPoint.east
directionToGo = .south

switch directionToGo {
case .north:
    print("Ir al norte")
case .south:
    print("Hay pingüinos en el sur")
case .east:
    print("Mordor se extiende hacia las tierras del este")
case .west:
    print("Cuidado con los vaqueros")

}

let somePlanet = Planet.mars

switch somePlanet {
case .earth:
    print("La tierra es segura")
default:
    print("No es seguro ir a este planeta")
}

enum Beverage: CaseIterable//Sintaxis protocolos
{
    case coffee, tea, juice, redBull
}
let numberOfChoices = Beverage.allCases.count
for beverage in Beverage.allCases
{
    print(beverage)
}


//Ejercicio
enum 
