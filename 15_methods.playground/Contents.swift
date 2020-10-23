import UIKit

//Mutating methods

class Counter
{
    var count = 0
    
    func increment(by amount: Int)
    {
        self.count += amount
    }
    
    func increment()
    {
        self.count += 1
    }
    
    func reset()
    {
        self.count = 0
    }
}
        //Ver que la variable count la puede modificar cualquier método dentro de la clase.


let counter = Counter()

counter.increment()
counter.increment(by: 8)
counter.reset()

struct Point
{
    var x = 0.0, y = 0.0
   
    //Función para saber si el punto está a la derecha de
    func isToTheRight(of x: Double) -> Bool
    {
        return self.x > x
    }
    
    //Función para mover el punto
    mutating func moveBy(x deltaX: Double, y deltaY: Double)
    {
        //self.x += deltaX
        //self.y += deltaY //RECORDAR: Que la función por si sola no puede cambiar las variables de la estructura
        //Para solucionar esto la función debe ser 'Mutable'
        
        //También se puede hacer lo siguiente: asignarle a la instancia ('self') un punto nuevo con los nuevos parámetros. No habrá diferencia en el resultado.
        self = Point(x: self.x + deltaX, y: self.y + deltaY)
    }
    
}


var somePoint = Point(x: 4, y: 5) // Si no es variable y es constante 'let' tampoco se podrán modificar sus parámetros
somePoint.isToTheRight(of: 1)
somePoint.isToTheRight(of: 54)

somePoint.moveBy(x: 2, y: -3)
somePoint.x = 9 //También se puede modificar el parámetro directamente si la estructura es variable


//Ejemplo con enum
enum DifferentStateSwitch
{
    case off, low, high
    
    mutating func next()
    {
        switch self { //RECORDAR: Para cambiar el valor del enum como lo hace este switch, la fucnión debe ser mutating
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}

var controllerStatus = DifferentStateSwitch.off // Instanciar al enum inicialemente en off
controllerStatus.next()
controllerStatus.next()
controllerStatus.next()


//Próximo: Métodos de clase
class SomeClass{
    class func someMethod() {
        print("Hola")
    }
}

SomeClass.someMethod()


struct LevelTracker{
    static var highestUnlockedLevel = 1
    var currentLevel = 1
    
    static func unlock(_ level: Int)
    {
        if level > highestUnlockedLevel
        {
            highestUnlockedLevel = level
        }
    }
    
    static func isUnlocked(_ level: Int) -> Bool{
        return level <= highestUnlockedLevel
    }
    
    mutating func advance(to level: Int) -> Bool{
        if LevelTracker.isUnlocked(level) //No se puede llamar al método sin llamar el nombre de la clase. Es una función estática
        {
            self.currentLevel = level
            return true
        }else
        {
            return false
        }
    }
    
}


class Player
{
    var tracker = LevelTracker() //Tiene un objeto estructura LevelTracker.
    let playerName: String
    
    func complete(level: Int){
        LevelTracker.unlock(level + 1) //Se llama a la estructura para correr el método unlock.
        tracker.advance(to: level + 1) //Se llama al objeto como tal
    }
    
    init(name: String) {
        self.playerName = name
    }
}

var player = Player(name: "Juan Sebastián")

player.complete(level: 1)
player
player.complete(level: 7)
player
if player.tracker.advance(to: 7)
{
    print("Podemos avanzar al nivel 7!")
}else{
    print("El nivel 7 sigue bloqueado por ahora...")
}
