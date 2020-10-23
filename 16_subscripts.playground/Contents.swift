import UIKit

//Subindices

struct TimesTable
{
    let multiplier: Int
    
    subscript(index: Int) -> Int{ //Implementación de subíndices
        return multiplier * index
    }
}

let threeTimesTables = TimesTable(multiplier: 3)
print("6 X 3 = \(threeTimesTables[6])")


for idx in 0...10 {
    print("\(idx) x 3 = \(threeTimesTables[idx])")
}


enum Planet: Int
{
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    static subscript(n: Int) -> Planet
    {
        return Planet(rawValue: n)!
    }
}

let marte = Planet[4]
marte


//Matrices
struct Matrix
{
    let rows: Int, columns: Int
    var grid: [Double]
    
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    
    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && column >= 0 && row < rows && column < columns
    }
    
    subscript(row: Int, column: Int) -> Double
    {
        get{
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[ (row * columns) + column]
        }
        set{
            assert(indexIsValid(row: row, column: column), "Index out of range")
            grid[ (row * columns) + column] = newValue
        }
    }
}

var matriz = Matrix(rows: 2, columns: 2)
matriz[0, 1] = 1.5
matriz[1, 0] = 2.5
matriz
print("")
for row in 0..<matriz.rows {
    for col in 0..<matriz.columns {
        print(matriz[row, col], separator: "", terminator: " ")
    }
    print("")
}
