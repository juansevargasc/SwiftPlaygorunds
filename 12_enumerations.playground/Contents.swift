import UIKit

//Enumerations
enum SomeEnumeration{
    //Aquí va la definición del enumerado
}


enum CompassPoint: String
{
    case north
    case south
    case east
    case west
}

enum Planet: Int
{
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
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
enum Destinations: CaseIterable
{
    case Bogota
    case CiudadDeMexico
    case Lima
    case SaoPaulo
    case Madrid
    case Santiago
    case Caracas
    case SanSalvador
}

var destination = Destinations.Lima
switch destination
{
    case .Bogota:
        print("Aeropuerto habilitado desde Octubre para vuelos internacionales.")
    case .Lima:
        print("Aeropuerto habilitado!")
    case .CiudadDeMexico:
        print("Aeropuerto habilitado!")
    default:
        print("Aeropuerto aún no habilitado para vuelos internacionales por la pandemia.")
}


//Reto
enum NotasMusicales: CaseIterable
{
    case A, B, C, D, E, F, G
}

for notas in NotasMusicales.allCases
{
    print(notas)
}
print("Número de notas: \(NotasMusicales.allCases.count)")


//Enumerations. Código de barras
enum Barcode
{
    case upc(Int, Int, Int, Int)
    case qr(String)
}
var productBarcode = Barcode.upc(8, 85909, 51226, 3)
//productBarcode = .qr("ADRTFF")

switch productBarcode {
case let .upc(numberSystem, manufacturer, product, check): //case let, deja asignar let a todos los argumentos ()
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check)")
case .qr(let productCode):
    print("QR: \(productCode)")
}

//Enumeradores con raw values - raw: Crudo, sin porcesar
enum ASCIIControlCharacter: Character
{
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

let earthOrder = Planet.earth.rawValue
let northDirection = CompassPoint.north.rawValue
let possiblePlantet = Planet(rawValue: 5) //Esta constante es un valor optional que trae el enumerado


let planetPosition = 3
if let anyPlanet = Planet(rawValue: planetPosition)
{
    switch anyPlanet {
    case .earth: //Si anyPlanet == .earth (o Planet.earth) que en el caso de Planet(rawValue: 3) es verdad
        print("La tierra es segura")
    default:
        print("No es seguro ir a este planeta")
    }
}else{
    print("El planeta indicado no existe...")
}
