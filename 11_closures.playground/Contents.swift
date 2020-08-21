import UIKit

//Closures: Se pensaron para sintaxis más limpia o ligera.

//FUNCTIONS
//1. Global
//2. Nested functions
//3. Closure

let names = ["Christian", "Juan Gabriel", "Edgar", "Ricardo", "Freddy"]

func backward(_ s1: String, _ s2: String) -> Bool
{
    return s1 > s2
}

backward("Juan Gabriel", "Edgar")

var reversedNames = names.sorted(by: backward)

/*
{ (params) -> return type in
 //Código del closure
 }
 */

reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})

//Se puede reducir la sintaxis:
reversedNames = names.sorted(by: { (s1, s2) in return s1 > s2})
reversedNames = names.sorted(by: { (s1, s2) in s1 > s2})
reversedNames = names.sorted( by: { $0 > $1 } )
reversedNames = names.sorted(by: >) //La mayor reducción posible


//Trailing closure
func someFunctionThatTakesAClosure(closure: () -> Void)
{
    //Aquí iría el cuerpo de la función
    
}

someFunctionThatTakesAClosure(closure: {
    //Aquí iría el cuerpo del closure
})

someFunctionThatTakesAClosure {
    //Añadir el closure aquí
}

reversedNames = names.sorted { $0 > $1}

let digitNames = [0:"Cero", 1:"Uno", 2:"Dos", 3:"Tres", 4:"Cuatro", 5:"Cinco", 6:"Seis", 7:"Siete", 8:"Ocho", 9:"Nueve"]

let numbers = [16, 58, 510, 2127]

let numberStrings = numbers.map({ (number) -> String in // numberStrings guarda un string a partir de number (Cada number está guardado en numbers). Map es como, a cada elemento de numbers (arreglo) asígnele un String. Se guarda un arreglo de Strings. Pero map depende de lo que el trailing closure haga. Map, mapea según el código del closure en síntesis.

    var number = number
    var output = ""
    repeat{
        output = digitNames[number % 10]! + output
        number /= 10
        
    }while number > 0
    return output
})

//Ejercicio
let numbersIntegers = [-1, 2, 34, 4566, -755]
let numberStrings2 = numbersIntegers.map({ (number) -> String in
    var number = number
    var output = ""
    var isNegative = false
    if number < 0
    {
        number *= -1
        isNegative = true
    }
    
    repeat{
        output = digitNames[number % 10]! + output
        number /= 10
        
    }while number > 0
    
    output = isNegative ? "-" + output : output
    
    return output
})

//Capturing Closures
//Están capturando los valores que le rodean
func makeIncrementer(forIncrement amount: Int) -> () -> Int{
    var runningTotal = 0
    func incrementer() -> Int{
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen() //incrementByTen guarda la función (o closure) que le devuelve la función makeIncrementer
incrementByTen()
incrementByTen() //runningTotal estaba en 10 ahora es 20. runningTotal estaba en 20 ahora es 30

let incrementBySeven = makeIncrementer(forIncrement: 7)
incrementBySeven() //Tiene su propia runningTotal, no es el mismo de la variable incrementBytTen
incrementBySeven()


//Escaping Closures
//Le permiten escapar un closure

var completionHandlers: [() -> Void] = [] // Arreglo de closures

func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void)
{
    completionHandlers.append(completionHandler) //Este que es el escapado, lo guarda en el arreglo y lo puede ejecutar más tarde
    
}

completionHandlers.count

func someFunctionWithNoneEscapingClosure(closure: () -> Void)
{
    closure()
}

class SomeClass{
    var x = 10
    func doSomething()
    {
        someFunctionWithEscapingClosure {
            self.x = 100 //Tiene que especificar
        }
        someFunctionWithNoneEscapingClosure {
            x = 200
        }
    }
}

let instance = SomeClass()
print(instance.x)

instance.doSomething()
print(instance.x)

completionHandlers.count
completionHandlers.first?() //Es un Optional por eso el ?. Los paréntesis son ejecutar el closure, invocarlo
print(instance.x)
