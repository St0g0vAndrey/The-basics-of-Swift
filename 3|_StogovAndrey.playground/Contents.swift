import PlaygroundSupport
import CoreFoundation

PlaygroundPage.current.needsIndefiniteExecution = true

struct SportCar
{
    var brandCar: String
    var ageCar: Int
    var volumeBaggageCar: Int
    var engineCar: String
    var windowCar: String
    var closeBaggage: Int
    var volumeBag: String
  
    enum VolumCar
    {
        case editEngineCar (editEngine: EditEngine)
        case  windCar (editWindow: EditWindow)
        case endVolumeBaggageCar (editBaggage: EditBaggage)
    
        enum EditWindow: String
        {
            case openWindow = "открыть окно"
            case closeWindow = "закрыть окно"
        }
        
        enum EditEngine: String
        {
            case runEngine = "запустить двигатель"
            case closeEngine = "заглушить двигатель"
        }
        
        enum EditBaggage: String
        {
            case loading = "погрузить груз"
            case unloading = "выгрузить груз"
        }
    }
    
    mutating func actionCar (Car: VolumCar)
    {
        switch Car
        {
            //Окна
        case .windCar(editWindow: let open) where open == .openWindow:
            windowCar = open.rawValue
            print(windowCar)
        case .windCar(editWindow: let close) where close == .closeWindow:
            windowCar = close.rawValue
            //Двигатель
        case .editEngineCar(editEngine: let engine) where engine == .runEngine:
            engineCar = engine.rawValue
        case.editEngineCar(editEngine: let engine) where engine == .closeEngine:
            engineCar = engine.rawValue
            //Багаж
        case .endVolumeBaggageCar(editBaggage: let baggage) where baggage == .unloading:
            if (closeBaggage != 0 || volumeBag == "выгрузить")
            {
                volumeBag = ("\(baggage.rawValue) объемом \(closeBaggage)")
            }
            else
            {
                volumeBag = "Багаж отсутствует"
            }
        case .endVolumeBaggageCar(editBaggage: let baggage) where baggage == .loading:
            if (closeBaggage != 0 || volumeBag == "погрузить")
            {
                volumeBag = "\(baggage.rawValue) объемом \(closeBaggage), осталось \(baggage.rawValue) \(volumeBaggageCar-closeBaggage)"
            }
            else
            {
                volumeBag = "У вас пустой багажник объемом \(volumeBaggageCar)"
            }
            
        default:
            break
        }
    }
    
}

struct TrunkCar
{
    var brandCar: String
    var ageCar: Int
    var volumeBaggageCar: Int
    var engineCar: String
    var windowCar: String
    var closeBaggage: Int
    var volumeBag: String
  
    enum VolumCar
    {
        case editEngineCar (editEngine: EditEngine)
        case  windCar (editWindow: EditWindow)
        case endVolumeBaggageCar (editBaggage: EditBaggage)
        
        enum EditWindow: String
        {
            case openWindow = "Открыть окно"
            case closeWindow = "Закрыть окно"
        }
        
        enum EditEngine: String
        {
            case runEngine = "Запустить двигатель"
            case closeEngine = "Заглушить двигатель"
        }
        
        enum EditBaggage: String
        {
            case loading = "Погрузить груз"
            case unloading = "Выгрузить груз"
        }
    }
    
    mutating func actionCar (Car: VolumCar)
    {
        switch Car
        {
            //Окна
        case .windCar(editWindow: let open) where open == .openWindow:
            windowCar = open.rawValue
            print(windowCar)
        case .windCar(editWindow: let close) where close == .closeWindow:
            windowCar = close.rawValue
            //Двигатель
        case .editEngineCar(editEngine: let engine) where engine == .runEngine:
            engineCar = engine.rawValue
        case.editEngineCar(editEngine: let engine) where engine == .closeEngine:
            engineCar = engine.rawValue
            //Багаж
        case .endVolumeBaggageCar(editBaggage: let baggage) where baggage == .unloading:
            if (closeBaggage != 0 || volumeBag == "выгрузить")
            {
                volumeBag = ("\(baggage.rawValue) объемом \(closeBaggage)")
            }
            else
            {
                volumeBag = "Багаж отсутствует"
            }
        case .endVolumeBaggageCar(editBaggage: let baggage) where baggage == .loading:
            if (closeBaggage != 0 || volumeBag == "погрузить")
            {
                volumeBag = "\(baggage.rawValue) объемом \(closeBaggage), осталось \(baggage.rawValue) \(volumeBaggageCar-closeBaggage)"
            }
            else
            {
                volumeBag = "У вас пустой багажник объемом \(volumeBaggageCar)"
            }
            
        default:
            break
                            
        }
    }
    
}

var Bugatti:SportCar = SportCar(brandCar: "Bugatti", ageCar: 2021, volumeBaggageCar: 600, engineCar: "Запущен", windowCar: "Закрыты", closeBaggage: 40, volumeBag: "Погрузить")

var BMW:SportCar = SportCar (brandCar: "Bmw M5", ageCar: 2017, volumeBaggageCar: 500, engineCar: "Заглушен", windowCar: "Окна закрыты", closeBaggage: 100, volumeBag: "Погрузить")


Bugatti.brandCar
Bugatti.ageCar
Bugatti.engineCar
Bugatti.volumeBaggageCar
Bugatti.windowCar
Bugatti.actionCar(Car: .windCar(editWindow: .openWindow))
Bugatti.windowCar
Bugatti.actionCar(Car: .endVolumeBaggageCar(editBaggage: .loading))
Bugatti.actionCar(Car: .editEngineCar(editEngine: .closeEngine))
Bugatti.engineCar
Bugatti.actionCar(Car: .endVolumeBaggageCar(editBaggage: .unloading))
Bugatti.volumeBag
Bugatti.actionCar(Car: .endVolumeBaggageCar(editBaggage: .loading))
Bugatti.volumeBag

BMW.brandCar
BMW.engineCar
BMW.windowCar
BMW.volumeBaggageCar

BMW.actionCar(Car: .editEngineCar(editEngine: .runEngine))
BMW.engineCar
BMW.actionCar(Car: .endVolumeBaggageCar(editBaggage: .loading))
BMW.volumeBag
BMW.actionCar(Car: .windCar(editWindow: .openWindow))
BMW.windowCar

var Meercedes: TrunkCar = TrunkCar(brandCar: "Mercedes-Benz Atego", ageCar: 2011, volumeBaggageCar: 10500, engineCar: "Заглушен", windowCar: "Окна закрыты", closeBaggage: 5000, volumeBag: "погрузить")

Meercedes.brandCar
Meercedes.volumeBaggageCar
Meercedes.ageCar
Meercedes.closeBaggage
Meercedes.windowCar
Meercedes.actionCar(Car: .editEngineCar(editEngine: .runEngine))
Meercedes.engineCar
Meercedes.actionCar(Car: .windCar(editWindow: .openWindow))
Meercedes.windowCar
Meercedes.actionCar(Car: .endVolumeBaggageCar(editBaggage: .loading))
Meercedes.volumeBag

var Volvo: TrunkCar = TrunkCar (brandCar: "Volvo S1200", ageCar: 2013, volumeBaggageCar: 13000, engineCar: "Запущен двигатель", windowCar: "Окна закрыты", closeBaggage: 6820, volumeBag: "выгрузить")


Volvo.brandCar
Volvo.ageCar
Volvo.volumeBaggageCar
Volvo.engineCar
Volvo.windowCar

Volvo.actionCar(Car: .windCar(editWindow: .openWindow))
Volvo.windowCar
Volvo.actionCar(Car: .editEngineCar(editEngine: .closeEngine))
Volvo.engineCar

Volvo.actionCar(Car: .endVolumeBaggageCar(editBaggage: .unloading))
Volvo.volumeBag
