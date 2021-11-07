import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution == true

//Основной класс машина
class Car {
    var brand: String
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
            return "Модель: \(brand) Топливо: \(fuel.rawValue) Год выпуска: \(ageCar) Тарнсмиссия: \(box.rawValue) Состояние: \(conditionEngine) Окна: \(conditionWindow)"
        case .editEngineCar(editEngine: let close) where close == .closeEngine:
            conditionEngine = close.rawValue
            return "Модель: \(brand) Топливо: \(fuel.rawValue) Год выпуска: \(ageCar) Тарнсмиссия: \(box.rawValue) Состояние: \(conditionEngine) Окна: \(conditionWindow)"
        case .windCar(editWindow: let open) where open == .openWindow:
            conditionWindow = open.rawValue
            return "Модель: \(brand) Топливо: \(fuel.rawValue) Год выпуска: \(ageCar) Тарнсмиссия: \(box.rawValue) Состояние: \(conditionEngine) Окна: \(conditionWindow)"
        case .windCar(editWindow: let closeW) where closeW == .closeWindow:
            conditionWindow = closeW.rawValue
            return "Модель: \(brand) Топливо: \(fuel.rawValue) Год выпуска: \(ageCar) Тарнсмиссия: \(box.rawValue) Состояние: \(conditionEngine) Окна: \(conditionWindow)"
            
        default:
            return "Модель: \(brand) Топливо: \(fuel.rawValue) Год выпуска: \(ageCar) Тарнсмиссия: \(box.rawValue) Состояние: \(conditionEngine) Окна: \(conditionWindow)"
        }
    }
}


//Дочерний класс Грузовые машины
class TrunkCar: Car {
    
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
    
    init(brand: String, fuel: FuelCar, ageCar: Int, box: BoxCar, capacity: Int, conditionEngine: String, conditionWindow: String, routSheet: String) {
        self.capacity = capacity
        self.routSheet = routSheet
        super.init(brand: brand, fuel: fuel, ageCar: ageCar, box: box, conditionEngine: conditionEngine, conditionWindow: conditionWindow)
    }
    
    deinit {
        
    }
    
    override func EditCar(Car: VolumCar) -> String {
        
        
    }
    
}
    
//Дочерний класс Спорткары
class SportCar: Car {
    
    let engineLocation: Engine // расположение двигателя
    let circulation: Int // тиражность машин
    var copyCar: Int // экземпляр
    
    enum Engine: String {
        case frintEngine = "Впереди"
        case backTngine = "В конце"
    }
    
    enum SuperCar {
        case tuningCar (chipCar: ChipEngine)
        
        enum ChipEngine: String {
            case tuningEngine = "Чипировать двигатель"
            case unTuningEngine = "Не чипировать двигатель"
        }
    }
    
    init(brand: String, fuel: FuelCar, ageCar: Int, box: BoxCar, conditionEngine: String, conditionWindow: String, engineLocation: Engine, circulation: Int, copyCar: Int) {
        self.engineLocation = engineLocation
        self.circulation = circulation
        self.copyCar = copyCar
        super.init(brand: brand, fuel: fuel, ageCar: ageCar, box: box, conditionEngine: conditionEngine, conditionWindow: conditionWindow)
    }
    
    deinit {
        
    }
}



var pr: Car = Car (brand: "BMW", fuel: .petrol, ageCar: 2012, box: .automate, conditionEngine: "заглушен", conditionWindow: "Закрыты")


pr.brand
pr.fuel.rawValue
pr.box.rawValue
pr.conditionEngine

pr.EditCar(Car: .editEngineCar(editEngine: .runEngine))
