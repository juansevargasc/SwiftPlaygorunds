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
    
    var address: Address?
    
    
    func printNumbersOfRooms()
    {
        print("El número de habitaciones es \(numberOfRooms)")
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

let edgar = Person()

let roomCount = edgar.residence?.numberOfRooms //Force unwrapping

if let roomCount = edgar.residence?.numberOfRooms
{
    print("La casa de Edgar tiene \(roomCount) habitación(es)")
}else{
    print("Edgar no tiene casa")
}

func createAddress() -> Address
{
    print("La función ha sido llamada")
    
    let someAdress = Address()
    someAdress.buildingNumber = "13"
    someAdress.street = "Calle de Platzi"
    return someAdress
}

edgar.residence?.address = createAddress() // La función no alcanza siquiera a ser llamda si ese residence? resulta ser nil.
edgar
// edgar.residence!.address = someAdress  Esto no está definido

edgar.residence?.printNumbersOfRooms() //Si residence? sigue siendo nil, tampoco llama a esta función

if edgar.residence?.printNumbersOfRooms() != nil
{
    print("He podido obtener el número de habitaciones.")
}else{
    print("No ha sido posible obtener el número de habitaciones.")
}


if( (edgar.residence?.address = createAddress()) != nil)
{
    print("Ha sido posible configurar la dirección de Edgar.")
}else
{
    print("Seguimos sin saber donde vive Edgar")
}


if let firstRoomName = edgar.residence?[0].name
{
    print("La primera habitación es de \(firstRoomName)")
}else
{
    print("La primera habitación no sabemos de quien es.")
}
 
edgar.residence?[0] = Room(name: "Bathroom") //Sigue dando nil

let edgarHouse = Residence()
edgarHouse.rooms.append(Room(name: "Bathroom"))
edgarHouse.rooms.append(Room(name: "Living Room"))
edgarHouse.rooms.append(Room(name: "Kitchen"))
edgar.residence = edgarHouse

if let firstRoomName = edgar.residence?[0].name
{
    print("La primera habitación es \(firstRoomName)")
}else
{
    print("La primera habitación no sabemos de quien es.")
}

edgar.residence?.address = createAddress()

// Optional Chaining Múltiple

if let edgarStreet = edgar.residence?.address?.street
{
    print("La casa de Edgar está en la calle \(edgarStreet)")
}else
{
    print("No sé dónde vive Edgar")
}
edgar
if let buildingIdentifier = edgar.residence?.address?.buildingIdentifier()
{
    print("Edgar vive en \(buildingIdentifier)")
}

if let _ = edgar.residence?.address?.buildingIdentifier()?.hasPrefix("13") // Recordar que si alguna de estas variables de esta cadena es optional, habrá que revisarlas una por una.
{
    print("Edgar vive en el número 13")
}else
{
    print("Edgar no vive en el número 13")
}
