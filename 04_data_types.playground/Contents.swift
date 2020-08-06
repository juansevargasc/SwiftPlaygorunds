import UIKit

//TIPOS DE DATOS
//Boolean
let orangesAreOranges = true
let foodIsDelicious = false
var isAged: Bool

isAged = false

if isAged
{
    print("Puedes entrar a la fiesta")
}else{
    print("No puedes entrar a la fiesta")
}

var age = 31

if age >= 18
{
    print("Puedes entrar en la fiesta")
}else{
    print("No puedes entrar!")
}

//Tuplas
let http404Error = (404, "Página no encontrada!")
let (statusCode, statusMessage) = http404Error
print("El código del estado es \(statusCode), el mensaje del servidor es \(statusMessage)")

let (justStatusCode, _) = http404Error
print("Código: \(justStatusCode)")

print("El código del error es: \(http404Error.0) y mensaje sería: \(http404Error.1)")

let http200Status = (statusCode: 200, description: "Ok")
print("El código del estado es \(http200Status.description)")



//Ejercicio: Edad nombre y apellido
let presentacion = (nombre: "Juanse", apellido: "Vargas", edad: 26)

