import PlaygroundSupport
import Foundation
import CoreText

enum ErrorList: Error {
    case noName
    case noPrice
}

class Telephone: Error {
    
    let CollectionPhone = [
        "Apple": "13 Pro Mac",
        "Samsung": "s21",
        "BlackBerry": "Evolve",
        "Honor": "50 Lite"
    ]
    
    func SearchName(name: String) throws {
        
        guard (CollectionPhone[name] != nil) else {
            throw ErrorList.noName
        }
        
        
    }
}

