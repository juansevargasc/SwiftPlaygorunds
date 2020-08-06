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



//Reto: Edad nombre y apellido
let presentacion = (nombre: "Juanse", apellido: "Vargas", edad: 26)

print("Hola soy \(presentacion.nombre) \(presentacion.apellido) y tengo \(presentacion.edad) años")


//Optionals y Nil
let possibleAge = "31"
let convertedAge = Int(possibleAge)

let possibleString = "Paco"
let convertedString = Int(possibleString)

var serverResponseCode: Int? = 404
serverResponseCode = nil

var surveyAnswer: String?

surveyAnswer = "42"
print(surveyAnswer)


//Force Unwrapping de una variable optional
if convertedAge != nil
{
    print("La edad del usuario no es nula: \(convertedAge!) ") //Convierte optional directamente a Int
}else{
    print("La edad del usuario es nula")
}

//Optional Binding - Genera una variable a partir de otra. La vincula, la bindea.
if let actualAnswer = surveyAnswer
{
    //Al llegar aquí SurveyAnswer no es nulo
    print("String tiene valor \(surveyAnswer) tiene el valor \(actualAnswer)")
}else{
    //Al llegar aquí, surveyAnswer = nil
    print("El string surveyAnswer es nil")
}



