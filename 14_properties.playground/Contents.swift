import UIKit

//Stored Properties. Se pueden crear en el interior de una clase/estructura
struct FixedLengthRange{
    var firstValue: Int
    let length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue = 6
let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
//rangeOfFourItems.firstValue = 5  - Error típico


//Lazy Prperties
class DataImporter
{
    var filename = "data.txt"
}

class DataManager
{
    lazy var importer = DataImporter() //Lazy es para que esta variable no sea creada al crear el objeto.
    var data = [String]() //Inicializar un arreglo vacío de Strings
}

let manager = DataManager()
manager.data.append("Algo de datos")
manager.data.append("Muchos más datos")
manager
//Hasta está linea el importer no ha sido creado
manager.importer.filename
//Aquí la variable importer ya ha sido creada.
manager


//Computed properties

struct Point
{
    var x = 0.0, y = 0.0
}

struct Size
{
    var width = 0.0, height = 0.0
}

struct Rect
{
    var origin = Point()
    var size = Size()
    var center: Point{ //Computed property
        get{
            let centerX = origin.x + size.width/2
            let centerY = origin.y + size.height/2
            return Point(x: centerX, y: centerY)
        }
        set(newCenter){
            origin.x = newCenter.x - size.width/2
            origin.y = newCenter.y - size.height/2
        }
        
    }
}

var square = Rect(origin: Point(x: 0, y: 0), size: Size(width: 10, height: 10))
square.center
let initialSquareCenter = square.center
square.center = Point(x: 20, y: 20)

//Computed properties de sólo lectura
struct Cuboid
{
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double{
            return width * height * depth
    } //Swift reconoce que es una propiedad de sólo lectura
}

let cuboid = Cuboid(width: 4.0, height: 5.0, depth: 2)
cuboid.volume
//cuboid.volume = 87.0 - Error ya que es una propiedad de sólo lectura.

//Ejercicio - Ejemplo de computed property


//Property observers
//Willset //Didset
class StepCounter
{
    var totalSteps: Int = 0{
        willSet(newTotalSteps)
        {
            print("El número de pasos va a subir hasta \(newTotalSteps)")
        }
        didSet{
            if totalSteps > oldValue{
                print("El número de pasos ha incrementado en \(totalSteps - oldValue)")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 520
stepCounter.totalSteps += 1234

//TODO: Hacer dos observers para la vida en un juego
class Game
{
    var life: Int = 100{
        willSet(newLifeStatus)
        {
            if newLifeStatus > 100
            {
                print("El porcentaje de vida no puede ser mayor a 100")
            }
        }
        didSet
        {
            if life <= 0
            {
                print("Juego terminado!")
            }
        }
    }
}

print("")

let myGame = Game()
myGame.life = 101
myGame.life = 78
myGame.life = 0
myGame.life = -11


//Type properties
struct SomeStruct
{
    var counter = 0
    static var storedTypeProperty = "SOME VALUE" //Común a todas las instancias
    static var computedTypeProperty: Int{
        return 1
    }
}

var instanceStr = SomeStruct()
var otherStr = SomeStruct()
SomeStruct.computedTypeProperty

class SomeClass
{
    static var storedTypeProperty = "Some Value"
    static var computedTypeProperty: Int{ //Esta no puede ser sobreescrita por clase padre o hijo
        return -9
    }
    
    class var overrideableComputedTypeProperty:Int{ //Esta la pueden sobreescribir los hijos
        return 108
    }
}

//Hacer presupuesto familiar usando static 
