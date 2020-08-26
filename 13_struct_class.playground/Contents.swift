import UIKit

//Struct vs Class
//Estructuras y clases

struct SomeStruct
{
    //La definición de la estructura aquí
    
}

class SomeClass
{
    //La definición de la clase aquí
}

struct Resolution
{
    var width = 0
    var height = 0
}

class VideoMode
{
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String? //Pueden tener nombre. Por eso es optional
}

//Ambos son let
let someResolution = Resolution()
let someVideoMode = VideoMode()

//Se pueden modificar los atributos de la clase, así sea constante. En este caso lo que es constante es el espacio de memoria en dónde está la clase
print(someResolution.width)
someVideoMode.resolution.width = 1280
print(someVideoMode.resolution.width)

someVideoMode.frameRate = 30.0
print(someVideoMode.frameRate)


//Sin embargo si una estructura es constante, no se pueden cambiar los atributos:
//someResolution.height = 30.0



//Tue. Aug 25
//Structs. Estructuras, datos copiados por valor. Tipos Evaluados
let vga = Resolution(width: 640, height: 480)
vga.height
vga.width

let hd = Resolution(width: 1920, height: 1080)

var cinema = hd
print("\(cinema.width) X \(cinema.height)")
cinema.width = 2048

print("\(cinema.width) X \(cinema.height)")

print("\(hd.width) X \(hd.height)")


enum CompassPoint
{
    case north, south, east, west
}

var currentDirection = CompassPoint.north
var oldDirection = currentDirection

currentDirection = .south

print(currentDirection)
print(oldDirection)

/*
 Los enumerados y las estructuras son tipos evaluados.
 Se están copiando los valores. Tienen valores que se copian
 de un lado al otro. Una no inmuta la otra
 */



//Class. Las clases son tipos de dato por referencia
//Una afecta a la otra


let tenEighty = VideoMode()

tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25

let alsoTenEighty = tenEighty

alsoTenEighty.frameRate = 30.0
tenEighty

/*
 Tipo de dato por referencia.
 Una copia del objeto, cambia al original.
 En este caso, ambos objetos se refieren a
 la misma posición de memoria. Por tanto son
 el mismo.
 */

if tenEighty === alsoTenEighty //!== Comparación de punteros. Comparación de referencias.
{
    print("Son el mismo objeto")
}else{
    print("Son diferentes")
}


