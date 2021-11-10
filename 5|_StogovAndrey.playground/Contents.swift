import PlaygroundSupport
import CoreGraphics
import Foundation
import CoreText

PlaygroundPage.current.needsIndefiniteExecution == true

enum FuelCar: String {
    
    case petrol = "Бензин"
    case diesel = "Дизель"
}

enum TransmissionCar: String {
    
    case automate = "Автоматическая"
    case mechanical = "Механическая"
}

enum SteerngWhelCar: String {
    
    case left = "Левый"
    case right = "Правый"
}

enum LocationEngine: String {
    
    case fronEngine = "Впереди"
    case backEngine = "В задней части"
}

enum DriveUnit: String {
    
    case front = "Передний"
    case backside = "Задний"
}

enum WindowCar: CustomStringConvertible {
    case open, close
    
    var description: String {
        switch self {
        case .open:
            return "Открыты"
        case .close:
            return "Закрыты"
        }
    }
}

enum EngineCar: CustomStringConvertible {
    case runEngine, muffleEngine
    
    var description: String {
        switch self {
        case .runEngine:
            return "Запущен"
        case .muffleEngine:
            return "Заглушен"
        }
    }
}

protocol Car {
    
    var brand: String {get}
    var age: Int {get}
    var fuel: FuelCar {get}
    var transmission: TransmissionCar {get}
    var steeringWhel: SteerngWhelCar {get}
    var actionWin: WindowCar {get set}
    var actionEng: EngineCar {get set}
    
    func PrintOutProt() -> String
    
}

extension Car {
    
    mutating func EditeWindow(wind: WindowCar) {
         
        switch wind {
        case .open:
            actionWin = .open
            //return "Открыты "
        case .close:
            actionWin = .close
            //return "Закрыты"
        }
    }
    
    mutating func EditeEngine(eng: EngineCar) {
        
        switch eng {
        case .runEngine:
            actionEng = .runEngine
            //return "Запущен"
        case .muffleEngine:
            actionEng = .muffleEngine
            //return "Заглушен"
        }
    }
}

class TruckCar: Car {
    //Свойства удовлетворяющие протоколу
    var brand: String
    var age: Int
    var fuel: FuelCar
    var transmission: TransmissionCar
    var steeringWhel: SteerngWhelCar
    var actionWin: WindowCar = .close
    var actionEng: EngineCar = .muffleEngine
    
    //Собственные свойства
    var ModelCar: String
    let volumeBaggage: Int
    //var action: WindowCar = .close
    
    init(brand: String, ModelCar: String, age: Int, fuel: FuelCar, transmission: TransmissionCar, steeringWhel: SteerngWhelCar, volumeBaggage: Int) {
        self.brand = brand
        self.ModelCar = ModelCar
        self.age = age
        self.fuel = fuel
        self.transmission = transmission
        self.steeringWhel = steeringWhel
        self.volumeBaggage = volumeBaggage
    }
    
    deinit {
        
    }
    
    func PrintOutProt() -> String {
        return "Марка: \(brand) Модель: \(ModelCar) \n Год: \(age) Топливо: \(fuel.rawValue) \n Трансмиссия: \(transmission.rawValue) \n Расположение руля: \(steeringWhel.rawValue) \n Объем багажника: \(volumeBaggage)"
    }
}

extension TruckCar: CustomStringConvertible {
   
    var description: String {
        return "Марка \(brand) Модель: \(ModelCar) \nСостояние: Двигатель: \(actionEng) Окна: \(actionWin)"
    }
    
}

class SportCar: Car {
    // Свойства удовлетворяющие протоколу
    var brand: String
    var age: Int
    var fuel: FuelCar
    var transmission: TransmissionCar
    var steeringWhel: SteerngWhelCar
    var actionWin: WindowCar = .close
    var actionEng: EngineCar = .muffleEngine
    
    //Собственные свойства
    var ModelCar: String
    var locationEng: LocationEngine
    var driveUnit: DriveUnit
    
    init(brabd: String, ModelCar: String, age: Int, fuel: FuelCar, transmission: TransmissionCar, steeringWhel: SteerngWhelCar, locationEng: LocationEngine, driveUnit: DriveUnit) {
        self.brand = brabd
        self.ModelCar = ModelCar
        self.age = age
        self.fuel = fuel
        self.transmission = transmission
        self.steeringWhel = steeringWhel
        self.locationEng = locationEng
        self.driveUnit = driveUnit
    }
    
    deinit {
        
    }
    
    func PrintOutProt() -> String {
        return "Марка: \(brand) Модель: \(ModelCar) \n Год: \(age) Топливо: \(fuel.rawValue) \n Трансмиссия: \(transmission.rawValue) \n Расположение руля: \(steeringWhel.rawValue) \n Расположение двигателя: \(locationEng.rawValue ) \n Привод: \(driveUnit.rawValue)"
    }
}

extension SportCar: CustomStringConvertible {
    
    var description: String {
        return "Марка \(brand) Модель: \(ModelCar) \nСостояние: Двигатель: \(actionEng) Окна: \(actionWin)"
        
    }
    
}

var Buick = SportCar(brabd: "Buick", ModelCar: "Park Avenue", age: 1992, fuel: .petrol, transmission: .automate, steeringWhel: .left, locationEng: .fronEngine, driveUnit: .front)

//Buick.PrintOutProt()
Buick.brand
Buick.ModelCar
Buick.transmission.rawValue
Buick.driveUnit.rawValue
Buick.EditeWindow(wind: .open)
Buick.EditeEngine(eng: .runEngine)
Buick.actionWin
Buick.actionEng

var Volvo = TruckCar (brand: "Volvo", ModelCar: "SR 1200", age: 2003, fuel: .diesel, transmission: .mechanical, steeringWhel: .left, volumeBaggage: 500000)

//Volvo.PrintOutProt()
Volvo.EditeEngine(eng: .runEngine)
Volvo.actionEng
