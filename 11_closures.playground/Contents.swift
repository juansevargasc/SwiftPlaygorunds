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

let numberStrings = numbers.map({ (number) -> String in // numberStrings guarda un string a partir de number (Cada number está guardado en numbers). Map es como, a cada elemento de numbers (arreglo) asígnele un String. Se guarda un arreglo de Strings

    var number = number
    var output = ""
    repeat{
        output = digitNames[number % 10]! + output
        number /= 10
        
    }while number > 0
    return output
})
