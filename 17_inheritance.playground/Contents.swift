import UIKit

class Vehicle
{
    var currentSpeed = 0.0
    var description: String{
        return "Viajando a \(currentSpeed) km/h"
    }
    
    func makeNoise()
    {
        //do nothing
    }
}

let someVehicle = Vehicle()
print(someVehicle.description)



class Bicycle: Vehicle
{
    var hasBascket = false
}

let someBicycle = Bicycle()
someBicycle.hasBascket = true
someBicycle.currentSpeed = 15.0
print(someBicycle.description)

//Tipo especial de bicicleta
class Tandem: Bicycle
{
    var currentNumberOfPassengers = 0
    
    override func makeNoise() {
        print("Ding ding")
    }
}

let tandem = Tandem()
tandem.hasBascket = true
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22.0
print(tandem.description)

class Train: Vehicle
{
    final var numberOfWagons = 0
    
    override func makeNoise() { //Sobre-escritura del método que estaba en el padre
        print("Choo Choo")
    }
}


let train = Train()
train.makeNoise()

tandem.makeNoise()


class Car: Vehicle
{
    var gear = 1
    
    override var description: String{
        return super.description + " en la marcha \(gear)"
    }
}

let car = Car()
car.currentSpeed = 55
car.gear = 3

print(car.description)
print(tandem.description)

class AutomaticCar: Car{
    override var currentSpeed: Double{
        didSet{
            gear = Int(currentSpeed / 15.0) + 1
        }
    }
}

let automatic = AutomaticCar()
automatic.currentSpeed = 65
print(automatic.description)

automatic.currentSpeed = 45
print(automatic.description)


//Ahora, para evitar que un variable o método se sobre-escriban por las clases hijo, se usa la palabra reserv. final

class RailWay: Train{
    //override var numberOfWagons - Da error dado que esta variable es final.
}
