import UIKit

//Inicializadores

struct Fahrenheit {
    var temperature: Double
    init() {
        self.temperature = 32
    }
}

var f1 = Fahrenheit()

struct Celsius {
    var temperature: Double
    
    init(fromFahrenheit fahrenheit: Double) {
        self.temperature = (fahrenheit - 32) / 1.8
    }
    
    init(fromKelvin kelvin: Double) {
        self.temperature = kelvin - 273.15
    }
    
    init(_ celsius: Double)
    {
        self.temperature = celsius
    }
}

let boilingPointOfWater = Celsius(fromFahrenheit: 212)

let freezingPointOfWater = Celsius(fromKelvin: 273.15)


//Nombres, etiquetas y optionals

struct Color
{
    let red, green, blue: Double
    
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    
    init(white: Double)
    {
        self.red = white
        self.green = white
        self.blue = white
    }
}

let magenta = Color(red: 1, green: 0, blue: 1)
let halfGrey = Color(white: 0.5)
let green = Color(red: 0, green: 1, blue: 0)


// let bodyTemperature = Celsius(celsius: 37) //Redundante
let bodyTemperature = Celsius(37)

class SurveyQuestion
{
    let text: String
    var response: String?
    
    init(is text: String)
    {
        self.text = text
    }
    
    func ask()
    {
        print(text)
    }
}

let q1 = SurveyQuestion(is: "¿Te gustan los tacos?")

q1.ask() //Aquí solo había pregunta, la respuesta está nil
q1.response = "Si, me encantan"


let q2 = SurveyQuestion(is: "¿Cuál es tu curso favorito en Platzi?")
let q3 = SurveyQuestion(is: "¿Cuál es tu edad?")


//Inicializador designado -> super clase

// Conveniencia -> Otro init de la misma clase

//El último init que se llame debe ser designado.

class Vehicle
{
    var numberOfWheels = 0
    var description: String{
        return "\(numberOfWheels) ruedas"
    }
}


let vehicle = Vehicle()
vehicle.description

class Bycicle: Vehicle{
    override init() { // Automática pone el override. Designado
        super.init() // Hay que llamar el constructor del padre
        numberOfWheels = 2
    }
}


let bycicle = Bycicle()
bycicle.description

class Hoverboard: Vehicle
{
    var color: String
    init(color: String) { // Init por conveniencia
        self.color = color
        
        //Aquí se llama implícitamente a super.init()
    }
    
    override var description: String
    {
        return "\(super.description) en el color \(self.color)"
    }
}

let hoverboard = Hoverboard(color: "Silver")
hoverboard.description //Uso la descripción del padre dentro de la descripción del hoverboard


//Failable initializer

enum TemperatureUnit
{
    case kelvin, celsius, fahrenheit
    
    init?(symbol: Character) { // init? es un failable initializer
        switch symbol {
        case "K":
            self = .kelvin
        case "C":
            self = .celsius
        case "F":
            self = .fahrenheit
        default:
            return nil
        }
    }
}

let someUnit = TemperatureUnit(symbol: "X")

class Product
{
    let name: String
    init?(name: String) {
        if name.isEmpty
        {
            return nil
        }
        self.name = name
    }
}

class CartItem: Product
{
    let quantity: Int
    
    init?(itemName: String, quantity: Int) {
        if quantity < 1
        {
            return nil
        }
        self.quantity = quantity
        super.init(name: itemName)
    }
}

if let someSocks = CartItem(itemName: "Socks", quantity: 2) //Se imprime solo si ambas variables son distintas a nil
{
    print("\(someSocks.name) - \(someSocks.quantity)")
}

if let someSocks = CartItem(itemName: "", quantity: 1) //Se imprime solo si ambas variables son distintas a nil
{
    print("\(someSocks.name) - \(someSocks.quantity)")
}

// Deinit - Destrucción de objetos

class Bank
{
    static var coinsInBank = 2_000
    static func distribute(coins numberOfCoinsRequested: Int) -> Int
    {
        let numberOfCoinsToVend = min(numberOfCoinsRequested, coinsInBank)
        coinsInBank -= numberOfCoinsToVend
        return numberOfCoinsToVend
    }
    
    static func receive(coins: Int)
    {
        coinsInBank += coins
    }
    
}

class Player
{
    var coinsInPurse: Int
    init(_ coins: Int) {
        self.coinsInPurse = Bank.distribute(coins: coins)
    }
    
    func win(coins: Int)
    {
        coinsInPurse += Bank.distribute(coins: coins)
    }
    
    deinit {
        Bank.receive(coins: coinsInPurse) //Notifico al banco, al destruir el objeto las monedas se devuelven al banco.
    }
}

var playerOne: Player? = Player(100)

Bank.coinsInBank
playerOne!.win(coins: 2000)
Bank.coinsInBank
playerOne = nil //Destrucción de jugador

Bank.coinsInBank

