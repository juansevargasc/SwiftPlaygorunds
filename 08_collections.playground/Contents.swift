import UIKit

//ESTRUCTURAS DE DATOS

//Arrays
//Conjuntos
//Diccionarios

//Array
var someInts = [Int]()
someInts.count
someInts.append(31)
someInts.count

someInts = []
someInts.count

var someDoubles = Array(repeating: 3.141592, count: 3)
someDoubles.count

var moreDoubles = Array(repeating: 2.5, count: 4)

var aLotOfDoubles = someDoubles + moreDoubles
aLotOfDoubles.count

var shoppingList: [String] = ["Papas", "Pimiento", "Tortillas", "Cerdo", "Cebolla"]
shoppingList.count


//Ejercicio
var family: [String] = ["Jose", "Maria Helena", "Gina", "Nelson", "Jorge", "Diana", "Jimeno", "Sarita", "Sandra"]
family.count



//Acceder y modificar elmentos de un Array
if shoppingList.isEmpty
{
    print("La lista de la compra está vacía")
}else{
    print("Mandemos a Ricardo a comprar")
}

shoppingList.append("Coke")
shoppingList.count

shoppingList += ["Totopos", "Guacamole", "Pico de gallo"]
shoppingList.count

var firstElment = shoppingList[0]
shoppingList[0] = "Huevos" //Sobreescribe la posición 0 del array
shoppingList

shoppingList[5]
shoppingList[4...6]
shoppingList[4...6] = ["Naranja", "Platano", "Mango"]
shoppingList

let pepper = shoppingList.remove(at: 1)
shoppingList
shoppingList.count

let _ = shoppingList.removeLast()
shoppingList
shoppingList.count
