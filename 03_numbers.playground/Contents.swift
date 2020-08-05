import UIKit

//Int
let age: UInt8 = 31 //

/*
 31 con una variable de 8 bits: 0001 1111
 
 31 con una variable de 64 bits: 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0001 1111
 */

let minValue = UInt8.min //2^0 - 1
let maxValue = UInt8.max //2^8 - 1

let minValue16 = UInt16.min //2^0 - 1
let maxVaulue16 = UInt16.max //2^16 - 1

let minValue32 = UInt32.min //2^0 - 1
let maxValue32 = UInt32.max //2^32 - 1

let minValue64 = UInt64.min //2^0 - 1
let maxValue64 = UInt64.max //2^64 - 1

//Doubles
let f1: Float = 3.14159265
let d1: Double = 3.14159265 //Hasta 15 cifras decimales

let meaningOfLife = 42 //Infiere que es Int.
let pi = 3.14159 //Infiere que es Double.
let anotherPi = 3 + 0.14159

//Diferentes bases
let decimalInteger = 17 // 1*10^1 + 7*10^0
let binaryInteger = 0b10001 // 1*2^4 + 0*2^3 + 0*2^2 + 0*2^1 + 1*2^0
let octalInteger = 0o21 // 2*8^1 + 1*8^0
let hexadecimalInteger = 0x11 // 1*16^1 + 1*16^0

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1 //e1 multiplicarlo por 10^1
let hexadecimalDouble = 0xC.3p0//p0 potencia 0

let paddedDouble = 00123.456
let someNumber = 0000097.540

let oneMillion = 1_000_000
let justMoreThanAMillion = 1_000_000.000_000_1

//Errores
//let cannotBeNegative: UInt8 = -1
//let tooBig: UInt8 = UInt8.max + 1

//Ejercicio - Ejemplo: Número de id antes de los 18 años
let id = 2004068
let idBinary = 0b111101001010001100100
let idOctal = 0o7512144
let idHexadecimal = 0x1E9464

//Casts
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
print(twoThousand + UInt16(one))

let three = 3
let decimalNumber = 0.1416
let piNumb = Double(three) + decimalNumber

//Redondear con librería Foundation. round() redondea arriba
let age2: Float = 17.6
round(age2)

//TypeAlias
typealias AudioSample = UInt16
var maxAmp = AudioSample.max //UInt16.max



