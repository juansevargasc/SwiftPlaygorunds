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


//Structs. Estructuras, datos copiados por valor
