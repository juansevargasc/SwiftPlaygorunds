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


//Ejercicio Reloj de tres en tres horas

