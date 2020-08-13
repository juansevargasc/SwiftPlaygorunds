import UIKit

//ESTRUCTURAS DE DATOS

//Arrays
//Conjuntos
//Diccionarios

//Array
var someInts = [Int]()
someInts.count
someInts.append(31)
someInts.count

someInts = []
someInts.count

var someDoubles = Array(repeating: 3.141592, count: 3)
someDoubles.count

var moreDoubles = Array(repeating: 2.5, count: 4)

var aLotOfDoubles = someDoubles + moreDoubles
aLotOfDoubles.count

var shoppingList: [String] = ["Papas", "Pimiento", "Tortillas", "Cerdo", "Cebolla"]
shoppingList.count


//Ejercicio
var family: [String] = ["Jose", "Maria Helena", "Gina", "Nelson", "Jorge", "Diana", "Jimeno", "Sarita", "Sandra"]
family.count



//Acceder y modificar elmentos de un Array
if shoppingList.isEmpty
{
    print("La lista de la compra está vacía")
}else{
    print("Mandemos a Ricardo a comprar")
}

shoppingList.append("Coke")
shoppingList.count

shoppingList += ["Totopos", "Guacamole", "Pico de gallo"]
shoppingList.count

var firstElment = shoppingList[0]
shoppingList[0] = "Huevos" //Sobreescribe la posición 0 del array
shoppingList

shoppingList[5]
shoppingList[4...6]
shoppingList[4...6] = ["Naranja", "Platano", "Mango"]
shoppingList

let pepper = shoppingList.remove(at: 1)
shoppingList
shoppingList.count

let _ = shoppingList.removeLast()
shoppingList
shoppingList.count


//Iterando en Arrays
for item in shoppingList
{
    print(item)
}

for (idx, item) in shoppingList.enumerated()
{
    print("Item: \(idx + 1): \(item)")
}


//Ejercicio
for (ind, member) in family.enumerated()
{
    print("Family member: \(ind + 1): \(member)")
}



//Conjuntos (Set)
var letters = Set<Character>()
letters.count
letters.insert("a")
letters.insert("h")
letters.insert("b")
letters

var favoriteGames: Set<String> = ["Final Fantasy", "World of Warcraft", "Farcry"]
favoriteGames.count

if favoriteGames.isEmpty
{
    print("No hay juegos favoritos")
}else{
    print("")
}

favoriteGames.insert("Metal Gear")

if let removedGame = favoriteGames.remove("Farcry")
{
    print("He eliminado de la lista \(removedGame)")
}

if favoriteGames.contains("Metal Gear")
{
    print("Me encanta ese juego")
}

for vg in favoriteGames.sorted()
{
    print(vg)
}



//Ejercicio
var favoriteMovies: Set<String> = ["Man Of Steel", "Batman v. Superman", "Zack Snyder Justice League", "Joker", "Aquaman"]
favoriteMovies.count

favoriteMovies.insert("Man Of Steel")
for movie in favoriteMovies.sorted()
{
    print(movie)
}



//Iterations and operations of sets
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let primeNumbers: Set = [2, 3, 5, 7]

//A union B
oddDigits.union(evenDigits).sorted()
//A intersección B
oddDigits.intersection(evenDigits)
evenDigits.intersection(evenDigits)
oddDigits.intersection(primeNumbers).sorted()

//A-B Diferencia simétrica
oddDigits.subtracting(primeNumbers).sorted()

//A+B = (A-B) unión (B-A) = A o B
oddDigits.symmetricDifference(primeNumbers).sorted()

let houseAnimals: Set = ["🐶", "😺"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "😺"]
let cityAnimals: Set = ["🐀", "🕊"]

houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
farmAnimals.isDisjoint(with: cityAnimals) //Son disjuntos si su intersección es vacía

//Ejercicio
let myFavoriteFood: Set = ["Guacamole", "Arroz", "Café", "Zanahoria", "Zukini", "Tomate", "Berenjena", "Lenteja", "Garbanzo", "Pollo", "Hamburguesa", "Panini", "Manzana", "Fresa", "Queso"]
let frutas: Set = ["Curuva", "Guanabana", "Fresa", "Mora", "Mandarina", "Naranja", "Manzana", "Banano"]

myFavoriteFood.isSubset(of: frutas) //Subconjunto
myFavoriteFood.isSuperset(of: frutas) //Superconjunto
myFavoriteFood.intersection(frutas) //Intersección
myFavoriteFood.union(frutas) //Unión
myFavoriteFood.subtracting(frutas) //Diferencia
myFavoriteFood.symmetricDifference(frutas) //Diferencia simétrica

for item in myFavoriteFood.symmetricDifference(frutas)
{
    print(item, separator: " ", terminator: " ")
}


//Diccionarios Parejas: Clave - Valor --> [k1:v1, k2:v2, ...]
var nameOfIntegers = [Int : String]()
nameOfIntegers[15] = "Quince"
nameOfIntegers = [:] //Vaciarlo

var airports: [String : String] = ["YYZ" : "Toronto",
                                   "DUB" : "Dublin",
                                   "PMI" : "Palma de Mallorca"
]
//Par clave - valor debe ser único
airports.count
airports.isEmpty

airports["LHR"] = "London City Airport"
airports
airports["LHR"] = "London Heathrow"
airports

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") //Sobreescribe el valor
{
    print("El valor tenía antiguamente el nombre de \(oldValue) ")
}
airports

if let airportName = airports["DUB"]
{
    print("El aeropuerto de DUB es \(airportName)")
}

airports["PMI"] = nil
airports

if let removedAirport = airports.removeValue(forKey: "DUB")
{
    print("Aeropuerto removido: \(removedAirport)")
}
airports

//Ejercicio
var myFamily: [String : Int] = ["Sandra" : 52, "Sarita" : 18]
myFamily["Juanse"] = 26
myFamily["Jimeno"] = 15
myFamily


//Iteración en Diccionarios
//Keys y Values
for (key, value) in airports
{
    print("\(key) - \(value)")
}

//Solo Keys
for airportKey in airports.keys
{
    print(airportKey)
}
//Solo Value
for airportName in airports.values
{
    print(airportName)
}
//Arrays a partir de keys o values de diccionario
let airportKeys = [String](airports.keys.sorted())
let airportNames = [String](airports.values.sorted())

