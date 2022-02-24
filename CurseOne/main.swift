//
//  main.swift
//  CurseOne
//
//  Created by Сергей Синёв on 19.02.2022.
//

import Foundation


protocol Oneprotocol {

    var brand: String { get set }
    var serial: String { get set }
    var trunkCapacity: Int { get set }
    var numberOfWheels: Int { get set }
    var color: String { get set }
    var maxSpeed: Int { get set }
    var yearOfIssue: Int { get set }
    var mileage: Int { get set }
    var engineCapacity: Double { get set }
    var enginePower: Int { get set }
    var isStartEngine: Bool { get set }
    var isOnLight: Bool { get set }
    var isOpenDoors: Bool { get set }
    var isOpenCarBonnet: Bool { get set }
    var isOpenWindows: Bool { get set }

    mutating func startEngine()

    mutating func onLight()

    mutating func openDoors()

    mutating func openCarBonnet()

    mutating func openWindows()

}

extension Oneprotocol {

    mutating func startEngine() {
        isStartEngine = false
        print("Двигатель включен")
    }

    mutating func onLight() {
        isOnLight = false
        print("Свет фар включен")
    }

    mutating func openDoors() {
        isOpenDoors = false
        print("Двери открыты")
    }

    mutating func openCarBonnet() {
        isOpenCarBonnet = false
        print("Капот открыт")
    }

    mutating func openWindows() {
        isOpenWindows = false
        print("Окна открыты")
    }
}

final class SportCar: Oneprotocol {

    var brand: String = String()
    var serial: String = String()
    var trunkCapacity: Int = Int()
    var numberOfWheels: Int = Int()
    var color: String = String()
    var maxSpeed: Int = Int()
    var yearOfIssue: Int = Int()
    var mileage: Int = Int()
    var engineCapacity: Double = Double()
    var enginePower: Int = Int()
    var isStartEngine: Bool
    var isOnLight: Bool
    var isOpenDoors: Bool
    var isOpenCarBonnet: Bool
    var isOpenWindows: Bool
    
    init (brand: String,
          serial: String,
          trunkCapacity: Int,
          numberOfWheels: Int,
          color: String,
          maxSpeed: Int,
          yearOfIssye: Int,
          mileage: Int,
          engineCapacity: Double,
          enginePower: Int,
          isStartEngine: Bool,
          isOnLight: Bool,
          isOpenDoors: Bool,
          isOpenCarBonnet: Bool,
          isOpenWindows: Bool)
    {
        self.brand = brand
        self.serial = serial
        self.trunkCapacity = trunkCapacity
        self.numberOfWheels = numberOfWheels
        self.color = color
        self.maxSpeed = maxSpeed
        self.yearOfIssue = yearOfIssye
        self.mileage = mileage
        self.engineCapacity = engineCapacity
        self.enginePower = enginePower
        self.isStartEngine = isStartEngine
        self.isOnLight = isOnLight
        self.isOpenDoors = isOpenDoors
        self.isOpenCarBonnet = isOpenCarBonnet
        self.isOpenWindows = isOpenWindows
    }
    
}

let car = SportCar(brand: "BMW",
                   serial: "M5",
                   trunkCapacity: 530,
                   numberOfWheels: 4,
                   color: "Blue",
                   maxSpeed: 305,
                   yearOfIssye: 2020,
                   mileage: 15000,
                   engineCapacity: 4.4,
                   enginePower: 625,
                   isStartEngine: false,
                   isOnLight: false,
                   isOpenDoors: false,
                   isOpenCarBonnet: false,
                   isOpenWindows: false)

print("""
Производитель авто: \(car.brand) \nМодель: \(car.serial) \nВместимость багажника: \(car.trunkCapacity)
\nКоличество колес: \(car.numberOfWheels) \nЦвет: \(car.color) \nМаксимальная скорость: \(car.maxSpeed) k.h.
\nГод выпуска: \(car.yearOfIssue) y. \nПробег: \(car.mileage) k.m. \nОбъем двигателя: \(car.engineCapacity) l.
\nМощность: \(car.enginePower) h.p. \nЗапущен двигатель - \(car.isStartEngine) \nВключены фары - \(car.isOnLight)
\nОткрыты двери - \(car.isOpenDoors) \nОткрыт капот - \(car.isOpenCarBonnet) \nОткрыты окна - \(car.isOpenWindows)
""")

print("----------------------------")


final class TruckCar: Oneprotocol {

    var brand: String = "SCANIA"
    var serial: String = "P380"
    var trunkCapacity: Int = 15000
    var numberOfWheels: Int = 6
    var color: String = "Black"
    var maxSpeed: Int = 120
    var yearOfIssue: Int = 2018
    var mileage: Int = 200000
    var engineCapacity: Double = 13.0
    var enginePower: Int = 380
    var isStartEngine: Bool = false
    var isOnLight: Bool = false
    var isOpenDoors: Bool = false
    var isOpenCarBonnet: Bool = false
    var isOpenWindows: Bool = false

}

let carTruck = TruckCar()

    func statusTrailer(trailer: String) {
        if trailer == "ON" {
            print("У грузовика есть прицеп")
        } else if trailer == "NO" {
            print("У грузовика нету прицепа")
        }
    }

    func statusSleeperInTheCockpit(sleeperInTheCockpit: String) {
        if sleeperInTheCockpit == "ON" {
            print("Спальное место в кабине водителя имеется")
        } else if sleeperInTheCockpit == "NO" {
            print("Спальное место в кабине водителя не имеется")
        }
    }

    func statusCargo(cargo: String) {
        if cargo == "ON" {
            print("Грузовик груженый")
        } else if cargo == "NO" {
            print("Грузовик не груженый")
        }
    }

print("""
Производитель авто: \(carTruck.brand) \nМодель: \(carTruck.serial) \nВместимость кузова: \(carTruck.trunkCapacity)
\nКоличество колес: \(carTruck.numberOfWheels) \nЦвет: \(carTruck.color)
\nМаксимальная скорость: \(carTruck.maxSpeed) k.h.
\nГод выпуска: \(carTruck.yearOfIssue) y. \nПробег: \(carTruck.mileage) k.m.
\nОбъем двигателя: \(carTruck.engineCapacity) l.
\nМощность: \(carTruck.enginePower) h.p. \nЗапущен двигатель - \(carTruck.isStartEngine)
 \nВключены фары - \(carTruck.isOnLight)
\nОткрыты двери - \(carTruck.isOpenDoors) \nОткрыт капот - \(carTruck.isOpenCarBonnet)
 \nОткрыты окна - \(carTruck.isOpenWindows) \n\(statusTrailer(trailer: "ON"))
\n\(statusSleeperInTheCockpit(sleeperInTheCockpit: "ON")) \n\(statusCargo(cargo: "NO"))
""")






