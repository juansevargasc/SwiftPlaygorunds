import UIKit

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

let counter = Counter()

counter.increment()
counter.increment(by: 8)
counter.reset()
