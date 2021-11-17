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
    try UserPrice(user: "Евгений", solutionUser: User)
} catch ErrorList.noName {
    print("Ошибка выбора")
} catch ErrorList.noPrice {
    print ("У вас недостаточно денег")
} catch {
    print ("Неожиданная ошибка")
}



/*
struct PriceTelephone {
    var nameT: String
    var price: Int
}

class Telephone: Error {
    
    var priceBuy = [
        "Iphone 13 Pro Max": PriceTelephone(nameT: "13 Pro MAx", price: 96000),
        "Samsung s21": PriceTelephone(nameT: "s21", price: 102000),
        "Honor 50 Lite": PriceTelephone(nameT: "50 Lite", price: 32000)
    ]
    
    var money = 90000

    func SearchName(nameT: String, money: Int) throws {
        
        guard let phone = priceBuy[nameT] else {
            throw ErrorList.noName
        }
        
        guard phone.price < money else {
            throw ErrorList.noPrice
        }
        
        print("Вы купили телефон \(phone.nameT) за \(phone.price) рублей")
    }
}



let CollectionPhone = [
    "Apple": "13 Pro Mac",
    "Samsung": "s21",
    "BlackBerry": "Evolve",
    "Honor": "50 Lite"
]

*/
