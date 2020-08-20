import UIKit

//Funciones

func greeting(person: String) -> String
{
    let greet = "Hola, \(person)!"
    return greet
}

greeting(person: "Jimeno")


//Parámetros de entrada
func sayHelloWorld() -> String
{
    return "Hello World!"
}

sayHelloWorld()

func greeting(person: String, isMale: Bool) -> String
{
    if isMale
    {
        return "Bienvenido Caballero \(person)"
    }else{
        return "Bienvenida Señorita \(person)"
    }
}

greeting(person: "Ricardo Celis", isMale: true)
greeting(person: "Laura", isMale: false)


//Ejercicio
func greeting(person: String, isMale: Bool, age: Int) -> String
{
    if isMale && age <= 20
    {
        return "Bienvenido joven \(person)"
    }else if !isMale && age <= 20
    {
        return "Bienvenida jovencita \(person)"
    }else{
        return "Bienvenido señor/a \(person)"
    }
}


//Valores de retorno, Optionals, Parámetros de salida
func greet2(person: String)
{
    print("Hola \(person)")
}

greet2(person: "Edgar")

func printAndCount(str: String) -> Int
{
    print(str)
    return str.count
}

printAndCount(str: "Hola que tal")

func printWithoutCounting(str: String)
{
    let _ = printAndCount(str: str)
}

printWithoutCounting(str: "Hola que tal")


func minMax(array: [Int]) -> (min: Int, max: Int)? //Retorna una tupla Optional
{
    if array.isEmpty
    {
        return nil
    }
    
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count]
    {
        if value < currentMin
        {
            currentMin = value
        }else if value > currentMax
        {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}


let bounds = minMax(array: [6, 3, -8, 3, 1, 9, 5, 15, -9]) //Bounds ahora es una tupla
print("De \(bounds!.min) a \(bounds!.max)")

minMax(array: []) //Devuelve Nil


//Etiquetas Param y Variadics
func someFunction(f1 firstParamName: Int, f2 secondParamName: Int)
{
    print(firstParamName + secondParamName)
}

someFunction(f1: 5, f2: 1)


func greeting(person: String, hometown: String) -> String
{
    return "Hola \(person) un placer que nos visites desde \(hometown)"
}


