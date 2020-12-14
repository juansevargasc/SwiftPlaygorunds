import UIKit


//Optional Chaining

/*class Person
{
    var residence: Residence? // Optional
}

class Residence
{
    var numberOfRooms = 1
}


let edgar = Person()
//let roomCount = edgar.residence!.numberOfRooms //Force unwrapping

if let roomCount = edgar.residence?.numberOfRooms
{
    print("La casa de Edgar tiene \(roomCount) habitación(es)")
}else{
    print("Edgar no tiene casa")
}

edgar.residence = Residence() //
if let roomCount = edgar.residence?.numberOfRooms //Optional chaining - Si yo puedo recuperar edgar.residence?.numberOfRooms que es un optional, puedo imprimir, sino hago otra cosa.
{
    print("La casa de Edgar tiene \(roomCount) habitación(es)")
}else{
    print("Edgar no tiene casa")
}
*/

// Ejemplo Optional Chaining

class Person
{
    var residence: Residence? // Optional
}

class Residence
{
    var rooms = [Room]() //Array de Room
    var numberOfRooms: Int
    {
        return rooms.count
    }
    subscript(i: Int) -> Room
    {
        get{
            return rooms[i]
        }
        set
        {
            rooms[i] = newValue
        }
    }
}

class Room
{
    let name: String
    
    init(name: String)
    {
        self.name = name
    }
}

class Address
{
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    
    func buildingIdentifier() -> String?
    {
        if let buildingNumber = buildingNumber, let street = street
        {
            return "\(buildingNumber) , \(street)"
        } else if buildingName != nil
        {
            return buildingName
        }else
        {
            return nil
        }
    }
}
