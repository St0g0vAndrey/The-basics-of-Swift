import PlaygroundSupport
import CoreGraphics
import Foundation
PlaygroundPage.current.needsIndefiniteExecution == true

//Основной класс машина
class Car {
    var brand: String // марка машины
    let fuel: FuelCar
    var ageCar: Int
    let box: BoxCar
    var conditionEngine: String
    var conditionWindow: String
    
    enum FuelCar: String {
        case petrol = "Бензин"
        case diesel = "Дизель"
    }
    
    enum BoxCar: String {
        case automate = "Автоматическая"
        case mechanical = "Механическая"
    }
    
    enum VolumCar {
        
        case editEngineCar (editEngine: EditEngine)
        case  windCar (editWindow: EditWindow)
        
        enum EditWindow: String {
            case openWindow = "Открыть окно"
            case closeWindow = "Закрыть окно"
        }
        
        enum EditEngine: String {
            case runEngine = "Запустить двигатель"
            case closeEngine = "Заглушить двигатель"
        }
    }
    
    init (brand: String, fuel: FuelCar, ageCar: Int, box: BoxCar, conditionEngine: String, conditionWindow: String) {
        
        self.brand = brand
        self .ageCar = ageCar
        self.box = box
        self.fuel = fuel
        self.conditionEngine = conditionEngine
        self.conditionWindow = conditionWindow
    }
    
    deinit {
        
    }
    
    func EditCar(Car: VolumCar) -> String {
        
        switch Car {
        case .editEngineCar(editEngine: let run) where run == .runEngine:
            conditionEngine = run.rawValue
            return "Модель: \(brand) Топливо: \(fuel.rawValue) Год выпуска: \(ageCar) Тарнсмиссия: \(box.rawValue) Состояние: \(conditionEngine)"
        case .editEngineCar(editEngine: let close) where close == .closeEngine:
            conditionEngine = close.rawValue
            return "Модель: \(brand) Топливо: \(fuel.rawValue) Год выпуска: \(ageCar) Тарнсмиссия: \(box.rawValue) Состояние: \(conditionEngine)"
        case .windCar(editWindow: let open) where open == .openWindow:
            conditionWindow = open.rawValue
           return "Модель: \(brand) Топливо: \(fuel.rawValue) Год выпуска: \(ageCar) Тарнсмиссия: \(box.rawValue) Окна: \(conditionWindow)"
        case .windCar(editWindow: let closeW) where closeW == .closeWindow:
            conditionWindow = closeW.rawValue
           return "Модель: \(brand) Топливо: \(fuel.rawValue) Год выпуска: \(ageCar) Тарнсмиссия: \(box.rawValue) Окна: \(conditionWindow)"
        default:
            return "Модель: \(brand) Топливо: \(fuel.rawValue) Год выпуска: \(ageCar) Тарнсмиссия: \(box.rawValue) Состояние: \(conditionEngine) Окна: \(conditionWindow)"
        }
    }
}


//Дочерний класс Грузовые машины
class TrunkCar: Car {
    
    let brandCar: String //модель
    var routSheet: String //маршпутный лист
    let capacity: Int // грузоподьемность
    
    enum TruckCar {
        
        case endVolumeBaggageCar (editBaggage: EditBaggage)
        case baggage (baggage: truckCar)
        
        enum EditBaggage: String {
            case loading = "Погрузить груз"
            case unloading = "Выгрузить груз"
        }
        
        enum truckCar:String {
            case unFasten = "Отстегнуть прицеп"
            case fasten = "Пристегнуть прицеп"
        }    }
    
    init(brand: String, fuel: FuelCar, ageCar: Int, box: BoxCar, capacity: Int, conditionEngine: String, conditionWindow: String, routSheet: String, brandCar: String) {
        
        self.capacity = capacity
        self.routSheet = routSheet
        self.brandCar = brandCar
        super.init(brand: brand, fuel: fuel, ageCar: ageCar, box: box, conditionEngine: conditionEngine, conditionWindow: conditionWindow)
    }
    
    deinit {
        
    }
    
    override func EditCar(Car: VolumCar) -> String {
        
        switch Car {
        case .editEngineCar(editEngine: .runEngine):
            return "Запрещено производить погрузку/выгрузку при запущенном двигателе"
        case .editEngineCar(editEngine: .closeEngine):
            return "Разрешено производить погрузку/выгрузку"
        default:
            return " "
        }
        
    }

    
    func TruckMethod (truck: TruckCar) -> String {
        
        switch truck {
        case .baggage(baggage: let b) where b == .fasten:
            return "\(b.rawValue) к \(self.brand) \(brandCar)"
        case .baggage(baggage: let a) where a == .unFasten:
            return "\(a.rawValue) к \(self.brand) \(brandCar)"
        case .endVolumeBaggageCar(editBaggage: let b) where b == .loading:
            return "\(b.rawValue) в \(self.brand) \(brandCar)"
        case .endVolumeBaggageCar(editBaggage: let a) where a == .unloading:
            return "\(a.rawValue) из \(self.brand) \(brandCar)"
            
        default:
            return " "
        }
    }
}
    
//Дочерний класс Спорткары
class SportCar: Car {
    
    let brandModel: String // модель
    let engineLocation: Engine // расположение двигателя
    let circulation: Int // тиражность машин
    var copyCar: Int // экземпляр
    
    enum Engine: String {
        case frontEngine = "Впереди"
        case backTngine = "В конце"
    }
    
    enum SuperCar {
        case tuningCar (chipCar: ChipEngine)
        
        enum ChipEngine: String {
            case tuningEngine = "Чипировать двигатель"
            case unTuningEngine = "Оставить заводские настройки двигателя"
        }
    }
    
    init(brand: String ,fuel: FuelCar, ageCar: Int, box: BoxCar, conditionEngine: String, conditionWindow: String, engineLocation: Engine, circulation: Int, copyCar: Int, brandModel: String) {
       
        self.engineLocation = engineLocation
        self.circulation = circulation
        self.copyCar = copyCar
        self.brandModel = brandModel
        super.init(brand: brand, fuel: fuel, ageCar: ageCar, box: box, conditionEngine: conditionEngine, conditionWindow: conditionWindow)
    }
    
    deinit {
        
    }
    
    override func EditCar(Car: Car.VolumCar) -> String {
        
        switch Car {
        case .editEngineCar(editEngine: .runEngine):
            return "Запрещено производить Чип-тюнинг на заведенной машине"
        case .editEngineCar(editEngine: .closeEngine):
            return "Разрешается производить тютинг авто"
            
        default:
            return " "
        }
    }
    
    func ChipMethod (chip: SuperCar) -> String {
        
        switch chip {
        case .tuningCar(chipCar: let c) where c == .tuningEngine:
            return "\(c.rawValue) в \(self.brand) \(brandModel)"
        case .tuningCar(chipCar: let b) where b == .unTuningEngine:
            return "\(b.rawValue) в \(self.brand) \(brandModel)"
            
        default:
            return " "
            
        }
    }
}



var BMW: Car = Car (brand: "BMW", fuel: .petrol, ageCar: 2012, box: .automate, conditionEngine: "заглушен", conditionWindow: "Закрыты")


BMW.brand
BMW.fuel.rawValue
BMW.box.rawValue
BMW.conditionEngine
BMW.EditCar(Car: .editEngineCar(editEngine: .runEngine))
BMW.EditCar(Car: .windCar(editWindow: .openWindow))


var Volvo:TrunkCar = TrunkCar (brand: "Мерседес", fuel: .petrol, ageCar: 2019, box: .mechanical, capacity: 50000, conditionEngine: "Заглушен", conditionWindow: "Закрыты", routSheet: "Москва Владивосток", brandCar: "RS1200")
Volvo.brand
Volvo.brandCar
Volvo.box.rawValue
Volvo.capacity

Volvo.TruckMethod(truck: .baggage(baggage: .fasten))
Volvo.EditCar(Car: .editEngineCar(editEngine: .runEngine))
Volvo.conditionEngine
Volvo.TruckMethod(truck: .endVolumeBaggageCar(editBaggage: .loading))

var Lancer:SportCar = SportCar (brand: "Mitsubishi", fuel: .petrol, ageCar: 2013, box: .automate, conditionEngine: "Запущен", conditionWindow: "Открыты", engineLocation: .frontEngine, circulation: 6000, copyCar: 1120, brandModel: "Lancer Evo")
Lancer.brand
Lancer.brandModel
Lancer.copyCar
Lancer.ageCar
Lancer.ChipMethod(chip: .tuningCar(chipCar: .tuningEngine))
Lancer.EditCar(Car: .editEngineCar(editEngine: .runEngine))
Lancer.box.rawValue
