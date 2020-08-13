import UIKit

let someString = "Soy un string cualquiera"

let multilineString = """


    Soy Juanse\
    Estamos haciendo el curso Swift.
    Intro
"""
//El backslash anula los intros

print(multilineString)

let wiseWords = "\"La imaginación es más importante que el saber\" -Albert Einstein"
let dollarSign = "\u{24}"
let blackHeart = "\u{2665}"
let heart = "\u{1F496}"

//Ejercicio
let nameAndCountry = "Hola soy Juanse, de \u{1F1E8}\u{1F1F4}"



//Inicialización y mutabilidad
var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty
{
    print("No hay nada aquí.")
}else{
    print("El string tiene un valor")
}

var newSomeString = "Un caballo"
newSomeString += "y un carruaje"
newSomeString += "y un soldado"

let aString = "y Ricardo Celis"

//Cada variable es independiente. Tipo de dato evaluado.
var a = "A"
var b = "B"
print("a vale \(a) y b vale \(b)")
b = a
print("a vale \(a) y b vale \(b)")
b = "C"
print("a vale \(a) y b vale \(b)")
a = "D"
print("a vale \(a) y b vale \(b)")

//Characters
let name = "Juan Gabriel 😎"
for ch in name {
    print(ch)
}

print("Number: \(name.count)")

let exclamationMark: Character = "!"

let nameChars: [Character] = ["J", "U", "A", "N"]
var nameString = String(nameChars) // El arreglo se transformó en String

let compoundName = "Juan " + "Gabriel"
nameString + String(exclamationMark)

nameString.append(exclamationMark) //Concatenar caracter

let multiplier = 3
var message = "El producto de \(multiplier) x 3.5 da \(Double(multiplier)*3.5)" //multiplier es Integer, para hacer multplier*3.5, debo hacer cast a multiplier (subirlo de nivel para poder compatibilizar)

3 * 3.5 //Pero puedo hacer la operación con los números en sí.

message.append(exclamationMark)

//Ejercicio 1
//let bandera = "\u{1F1E8}\u{1F1F4}"
let myNameChar: [Character] = ["J", "U", "A", "N", "S", "E", "\u{1F1E8}\u{1F1F4}"]
let myName = String(myNameChar)

//Ejercicio 2. n = 36
print("\nTabla del 36")
for n in 0...10 {
    print("36 X \(n) = \(36 * n)")
}
print("")


//Índices de Strings
let greeting = "Hola, ¿que tal?"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]

for idx in greeting.indices {
    print("\(greeting[idx])", terminator: "") //Tener en cuenta que idx no son posiciones de números enteros de 0 a n
}

print("")

var welcome = "Hola"
welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf: " que tal" , at: welcome.index(before: welcome.endIndex))

welcome.remove(at: welcome.index(before: welcome.endIndex))
welcome

let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
//Rango desde el final menos 6 (desde la 'u') hasta el final del string sin incluir porque el último caracter es n-1

welcome.removeSubrange(range) //Retira el rango del string dado. No se pueden investigar los número porque también son Raw bits


//Substring
greeting
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let firstPart = greeting[..<index] //Substring. Pequqeña parte del espacio de memoria del String original.

let newString = String(firstPart) //String. Deben ser convertido los substrings a Strings


//Prefijos y Sufijos
let newGreeting = "Hola, soy Juanse"
newGreeting.hasPrefix("Hola")
newGreeting.hasSuffix("r")

let collection = [
        "Act 1 Scene 1", "Act 1 Scene 2", "Act 1 Scene 3",
        "Act 2 Scene 1", "Act 2 Scene 2",
        "Act 3 Scene 1", "Act 3 Scene 2", "Act 3 Scene 3", "Act 3 Scene 4"
]

var act1SceneCount = 0
for scene in collection {
    if scene.hasPrefix("Act 2")
    {
        act1SceneCount += 1
    }
}
print("Número de escenas del Acto 1: \(act1SceneCount)")


//Unicode

//UTF 8
//UTF 16
//Unicode: UTF 36
let ghost = "¡Fantasma! 👻"
for codeUnit in ghost.utf8
{
    print(codeUnit, terminator: " ")
}
print("")
for codeUnit in ghost.utf16
{
    print(codeUnit, terminator: " ")
}
print("")
for codeUnit in ghost.unicodeScalars
{
    print(codeUnit, terminator: " ")
}
