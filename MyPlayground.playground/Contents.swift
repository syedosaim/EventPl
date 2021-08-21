import UIKit

@discardableResult

func measure<T>(tag: String = #function, work:() -> T) -> T{
    
    let beign = CACurrentMediaTime()
    
    defer{
        let time = CACurrentMediaTime() - beign
        print("[Measure] \(tag) = \(time)")
        
    }
    
    return work()
    
}

func doHardWork(){
    
    measure{
        
        (0..<1000000).reduce(0, +)
        
        
    }
    
    
    
}

