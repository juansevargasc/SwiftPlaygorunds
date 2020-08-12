import UIKit

//Operadores

/*
 1. Unarios
 2. Binarios
 3. Ternarios
 */

let b = 10
var a = 5
a = b

let (x,y) = (1,2)

if a == b
{
    print("a y b son iguales")
}

1 + 2
5 - 3
2 * 3
10.0 / 2.5
"Hello " + "World!"

//Enteros
9 / 4
9 % 4
9 == 4*2 + 1

-9 / 4
-9 % 4

let five = 5
let minusFive = -five
let plusFive = -minusFive
let minusSix = -6
let alsoMinusSix = +minusSix



//Ejericio
9 / -4.3
9 % 4
9 == 4*2 + 1

//Ejericio
var decimalNumber = 20.0
let reminderDouble = decimalNumber.truncatingRemainder(dividingBy: 3.0)
print(reminderDouble)

var number = 9
number += 3 //number = number + 3
number -= 2

number /= 2
number *= 12
number %= 7 //number = number % 7

//Comparaciones
1 == 1
2 == 1
1 != 2
2 > 1
3 <= 5
2 <= 1

let name = "Juan Gabriel"

if name == "Juan Gabriel"
{
    print("Bienvenido \(name)")
}else{
    print("Cuidado, ha aparecido \(name)")
}

(1, "Juan Gabriel") < (2, "Ricardo Celis")
(3, "Juan Gabriel") < (3, "Ricardo Celis")
(3, "Ricardo Celis") < (3, "Juan Gabriel")
(4, "perro") == (4, "perro")
//("perro", false) < ("perro", true) No tiene sentido por los booleanos
("perro", false) == ("perro", true)

//Ejercicio
(26, "Juanse") < (31, "Juan Gabriel")
(26, "Juanse") > (31, "Juan Gabriel")
(26, "Juanse") == (31, "Juan Gabriel")

//Operador Ternario
/*
 */
let contentHigh = 40
var hashImage = true
var rowHeight = 0

if hashImage
{
    rowHeight = contentHigh + 50
}else{
    rowHeight = contentHigh + 10
}

rowHeight = contentHigh + (hashImage ? 50 : 10) //Si hashImage es true, es 50. Si es false, es 10

//Operador Nil Coalescing
let defaultAge = 18
var userAge: Int?

userAge = 31
var ageToBeUsed = userAge ?? defaultAge //La edad que va a usar el código es userAge si existe. Sino defaultAge
//Con ternario ageToBeUsed = (userAge != nil ? userAge! : defaultAge)

let defaultColorName = "red"
var userColorName: String?

var colorNameToUse = userColorName ?? defaultColorName


//Ejericio
let defaultUserName = "Cristiano Ronaldo"
var userName: String?
userName = "Hazard"

var userNameToUse = userName ?? defaultUserName
print("Nombre: \(userNameToUse)")


