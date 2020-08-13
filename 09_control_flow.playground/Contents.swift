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








