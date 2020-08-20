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
func someFunction(f1 firstParamName: Int, f2 secondParamName: Int = 12) //Segundo parámetro por defecto es 12
{
    print(firstParamName + secondParamName)
}

someFunction(f1: 5, f2: 1)
someFunction(f1: 5)

func greeting(_ person: String, from hometown: String) -> String //_ omite etiqueta en person
{
    return "Hola \(person) un placer que nos visites desde \(hometown)"
}

greeting("Juan Gabriel", from: "Mallorca")

func mean(_ numbers: Double...) -> Double //Múltiples parámetros, mínimo uno sintaxis: tag name: type...
{
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

mean(1, 2, 3, 5)
mean(2, 2, 2, 2)
mean(3, 4, 10, 3, 1)

func geometric(_ numbers: Double...) -> Double
{
    var total: Double = 1
    for number in numbers
    {
        total *= number
    }
    return pow(total, 1 / ( Double(numbers.count)) )
}


geometric(4, 3)
geometric(2, 4)
geometric(4, 4)
geometric(1, 25)

//Parámetros inout
var x = 5

func addOne(number: Int)
{
    var number2 = number
    number2 += 1
    print("El número ahora vale \(number2)")
}


addOne(number: x)

func swapTwoInts(_ a: inout Int, _ b: inout Int) //Inout significa que se hace referencia al espacio de memoria. Como al apuntador.
{
    let tempA = a
    a = b
    b = tempA
}

var someInt = 3
var otherInt = 7
print("Someint: \(someInt). Otherint: \(otherInt)")
swapTwoInts(&someInt, &otherInt)
print("Someint: \(someInt). Otherint: \(otherInt)")


//Function Types
func addTwoInts(_ a: Int, _ b: Int) -> Int
{
    return a + b
} // (Int, Int) -> Int    tipo de dato Function

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int
{
    return a * b
}// (Int, Int) -> Int

func printHelloWorld()
{
    print("Hello World")
} //() -> Void   Vacío de entrada y vacío de salida

//Cualquier función puede ser creada como variable.
var matchFunction: (Int, Int) -> Int = addTwoInts //Puedo cambiar de función
matchFunction(4, 6) //Variable función o función guardada en otra variable.

func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int)
{
    print("Resultado: \(mathFunction(a, b) )")
}

printMathResult(multiplyTwoInts, 5, 9)



func chooseStepFunction(backward: Bool) -> (Int) -> Int //Devuelve una función que acepta un (Int) como parámetro de entrada y un Int como parámetro de salida
{
    func stepForward(_ input: Int) -> Int
    {
        return input + 1
    }

    func stepBackward(_ input: Int) -> Int
    {
        return input - 1
    }
    
    return backward ? stepBackward : stepForward
} // Se recomienda que si la función retorna una función, esta o estas funciones que retorne estén dentro de la función principal.

var value = 10

let moveNearerZero = chooseStepFunction(backward: value > 0)

while value != 0
{
    print("\(value)...")
    value = moveNearerZero(value)
}

print("Cero!!!!!")

