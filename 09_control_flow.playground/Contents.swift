import UIKit


//for - in
let names = ["Ricardo Celis", "Juan Gabriel", "Edgar"]

for name in names
{
    print("Hola \(name)")
}


let numberOflegs = ["spider": 8, "ant": 6, "dog": 4]

for (animalName, legCount) in numberOflegs
{
    print("Animal: \(animalName), número de patas: \(legCount)")
}

for idx in 1...5
{
    print(idx)
}

let base = 2
let power = 10
var answer = 1

for _ in 0...power //_ para no poner idx sabiendo que no se usará
{
    answer *= base
    print(answer)
}

var hour = 9
let minutes = 60
for tickMarck in 0..<minutes
{
    print("\(hour) : \(tickMarck)")
}
let minuteInterval = 5
for tickMarck in stride(from: 0, to: minutes, by: minuteInterval) //Stride permite contar en un intervalo determinado
{
    print("\(hour) : \(tickMarck)")
}
print("")

//Ejercicio Reloj de tres en tres horas
for hours in stride(from: 0, to: 25, by: 3)
{
    if hours == 0
    {
        print("12 : 00 am")
    }else
    {
        if hours < 12
        {
            print("\(hours) : 00 am")
        }else
        {
            if hours - 12 == 0
            {
                print("12 : 00 pm")
            }else
            {
                print("\(hours - 12) : 00 pm")
            }
        }
    }
}
print("")


//Bucle While
var i = 0
while i <= 10
{
    i += 1
}
print(i)


repeat
{
    i += 1
}while i <= 10
print(i)
print("")

//Ejercicio - Número primos del 2 al 100
let n = 100
var number = 2 //From number to 100
var div = 2 //First prime number, first divisor for all numbers from now on.

while number <= n
{
    var isPrime = true //Let's assume number is always prime until we demonstrate the opposite
    while (isPrime) && (number != div)
    {
        isPrime = ( number % div != 0 )
        div += 1
    }
    div = 2 //Reset div to 2 to iterate for the next loop
    
    if isPrime
    {
        print(number, separator: "", terminator: " ") //Wanna know which ones are primes
    }
    number += 1 //Next number
}
print("")



//If - Else
var temp = 16
if temp <= 15
{
    print("Hace frío, enciende la calefacción")
}else if temp >= 25{ //temp > 15
    print("Hace calor, Enciende el aire acondicionado")
}else{ //15 < temp < 25
    print("La sensación térmica es agradable, no hace falta modificarla")
}

//Ejercicio prestar dinero


//Switch - Case
let someCharacter: Character = "z"
switch someCharacter
{
    case "a", "A":
        print("Es la primera letra del alfabeto")
    case "z", "Z"   :
        print("Es la última letra del alfabeto")
    default:
        print("Alguna otra letra")
}


//Ejercicio de Kendall
let someCharacterVocal: Character = "a"
switch someCharacterVocal.uppercased() { //.uppercased transforma el valor dado en Mayuscula, por lo que no importa si la letra digitada es Mayuscula o Minuscula
    case"A","E","I","O","U":
        print("La letra \(someCharacterVocal.uppercased()) es una vocal")
    default:
        print("Podria ser una consonante")
}


//Switch usando rangos - Interval Matching
let moons = 62
let phrase = "Lunas en saturno"
let naturalCount: String

switch moons {
    case 0:
        naturalCount = "No hay "
    case 1..<5:
        naturalCount = "Hay unas pocas "
    case 5..<12:
        naturalCount = "Hay bastantes "
    case 12..<100:
        naturalCount = "Hay decenas de "
    case 100..<1000:
        naturalCount = "Hay centenares "
    default:
        naturalCount = "Hay muchiiiisimas "
}
print("\(naturalCount)\(phrase)")

//Ejercicio Dinero


//Switch Usando Tuplas
let somePoint = (0, 1)
switch somePoint {
case (0, 0):
    print("El punto \(somePoint) es el origen de las coordenadas")
case(_, 0):
    print("El punto \(somePoint) se halla sobre el eje de las X")
case(0, _):
    print("El punto \(somePoint) se halla sobre el eje de las Y")
case(-2...2, -2...2):
    print("El punto \(somePoint) se halla sobre el cuadrado de lado 4")
default:
    print("El punto está en algún lado")
}

let anotherPoint = (2, 0)
switch anotherPoint
{
    case (let x, 0): //Guarda con let variable, el valor para poder usarlo
        print("Sobre el eje de las X, con valor \(x)")
    case (0, let y):
        print("Sobre el eje de las Y, con valor \(y)")
    case let(x, y) where x == y:
        print("El punto se halla sobre la recta x = y")
    case let(x, y) where x == -y:
        print("El punto se halla sobre la recta x = -y")
    case let (x, y): //En este caso x e y pueden tomar cualquier valor, por tanto el default no es ncesario.
        print("En algún lugar del plano, en ( \(x), \(y) )")
}


//Switch con casos compuestos
let someCharacters: Character = " "
switch someCharacters
{
case "a", "e", "i", "o", "u":
    print("Se trata de una vocal")
case "b", "c", "d", "f", "g": //TODO Acabar con el resto del abecedeario, solo consonantes
    print("Se trata de una consonante")
default:
    print("Se trata de un caracter no vocal ni consonante minúscula")
}


let stillAnotherPoint = (9, 5)
switch stillAnotherPoint
{
    case (let distance, 0), (0, let distance):
        print("Se halla sobre el eje a distancia \(distance)")
    default:
        print("No está sobre el eje")
}

//TODO: Switch ejemplo
