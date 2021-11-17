import PlaygroundSupport
import Foundation
import CoreText

enum ErrorList: Error {
    case noName
    case noPrice
}

struct Items {
    
    var name: String
    var price: Int
}

class Phone {
    
    var collectionPhone = [
        "Apple": Items (name: "Iphone", price: 120000),
        "Samsung": Items (name: "Samsung", price: 99000),
        "Honor": Items (name: "Honor", price: 70000)

    ]
    var deposit = 0
    
    func SolutionP (_ name: String) throws {
        
        guard let phone = collectionPhone[name] else {
            throw ErrorList.noName
        }
        
        guard phone.price < deposit else {
            throw ErrorList.noPrice
        }
        
        print("Вы купили телефон \(phone.name) за \(phone.price)")
    }
}

let UserCollection = [
    "Максим": "Apple",
    "Евгений": "Samsung",
    "Александр": "Honor"
]

func UserPrice (user: String, solutionUser: Phone) throws {
    let UserName = UserCollection[user] ?? "Apple"
    
    try solutionUser.SolutionP(UserName)
}

var User = Phone()

User.deposit = 100000

do {
    try UserPrice(user: "Александр", solutionUser: User)
} catch ErrorList.noName {
    print("Ошибка выбора")
} catch ErrorList.noPrice {
    print ("У вас недостаточно денег")
} catch {
    print ("Неожиданная ошибка")
}
