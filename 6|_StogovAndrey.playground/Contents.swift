import PlaygroundSupport
import Foundation

struct SomeStruct <MyNewTYpe> {
    var queue = [MyNewTYpe] ()
    
    mutating func push (_ elment: MyNewTYpe) {
        queue.append(elment)
    }
    
    func FilterNumbers() -> [MyNewTYpe] {
        let newArray = queue.filter { $0 as! Int % 2 == 0 }
        return newArray
    }
    
    func PrintArray () {
        for i in queue {
            print(i)
        }
    }
}

var Animal = SomeStruct<String>()
Animal.push("Кот")
Animal.push("Собака")
Animal.push("Хомяк")

var Numbers = SomeStruct<Int>()
Numbers.push(12)
Numbers.push(9)
Numbers.push(200)


Numbers.PrintArray()
Numbers.FilterNumbers()
