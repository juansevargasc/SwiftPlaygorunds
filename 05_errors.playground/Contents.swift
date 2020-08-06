import UIKit



//Try - Catch
func canThrowError() throws
{
    //Código que puede causar un error
}

do{
    try canThrowError()
    //Si llegamos aquí no ha habido error
}catch{
    //Si llegamos aquí ha habido un error
}

//Reto Make a Sandwich
var hayIngredientes: Bool = false
var hayPlatos: Bool = true

//Se crean los errores
enum ErrorSandwich: Error
{
    case noHayIngredientes
    case noHayPlatosLimpios
}

func makeASandwich() throws
{
    if hayIngredientes && hayPlatos
    {
        print("Aquí está el sandwich")
    }else if hayPlatos{
        throw ErrorSandwich.noHayIngredientes
    }else{
        throw ErrorSandwich.noHayPlatosLimpios
    }
}

do{
    try makeASandwich()
    //Me como el sandwich
}catch ErrorSandwich.noHayIngredientes{
    print("Comprar ingredientes")
}catch ErrorSandwich.noHayPlatosLimpios{
    print("Lavar los platos")
}
