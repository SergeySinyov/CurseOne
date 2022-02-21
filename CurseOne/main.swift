//
//  main.swift
//  CurseOne
//
//  Created by Сергей Синёв on 19.02.2022.
//

import Foundation

// HomeWork Four

enum window {
    case open
    case close
}

enum engine {
    case start
    case off
}

enum transmition {
    case auto
    case manual

}

class Car {

    let brand: String
    var engineStatus: engine
    var windowStatus: window
    var numberOfWheels: Int
    var transmitionStatus: transmition
    var color: String
    let light: String

    init (brand: String, egineStatus: engine,
          windowStatus: window,
          numberOfWheels: Int,
          transmitionStatus: transmition,
          color: String, light: String)
    {
        self.brand = brand
        self.engineStatus = egineStatus
        self.windowStatus = windowStatus
        self.numberOfWheels = numberOfWheels
        self.transmitionStatus = transmitionStatus
        self.color = color
        self.light = light
    }

    func lightStatus(ligh: String) {
        if light == "ON" {
            print("Свет фар включен")
        } else if ligh == "Off" {
            print("Свет фар выключен")
        }
    }
}


//Наследование класс

final class CarNext: Car {

    override func lightStatus(ligh: String) {
        if light == "ON" {
            print("Свет фар включен")
        } else if ligh == "Off" {
            print("Свет фар выключен")
        }
    }
}


final class CarTruck: Car {

    let trailer = true

    func trailerStatus() {
        if trailer == true {
            print("Trailer mounted on a truck")
        }
    }
}

let carBmw = Car(brand: "BMW", egineStatus: .off,
                 windowStatus: .close,
                 numberOfWheels: 4,
                 transmitionStatus: .auto,
                 color: "White", light: "ON")

let carAudi = CarNext(brand: "Audi",
                      egineStatus: .off,
                      windowStatus: .close,
                      numberOfWheels: 4,
                      transmitionStatus: .manual,
                      color: "Red",
                      light: "ON")

let carMercedesTruck = CarTruck(brand: "Mercedes",
                                egineStatus: .off,
                                windowStatus: .close,
                                numberOfWheels: 16,
                                transmitionStatus: .auto,
                                color: "White",
                                light: "Off")



print("First Car \nBrand: \(carBmw.brand) \nEngine status: \(carBmw.engineStatus)")
print("Window status: \(carBmw.windowStatus) \nNumber of wheels: \(carBmw.numberOfWheels)")
print("Transmition: \(carBmw.transmitionStatus) \nColor: \(carBmw.color) \nLight Status \(carBmw.light)")

print("------------------------------")

print("Second Car \nBrand: \(carAudi.brand) \nEngine status: \(carAudi.engineStatus)")
print("Window status: \(carAudi.windowStatus) \nNumber of wheels: \(carAudi.numberOfWheels)")
print("Transmition: \(carAudi.transmitionStatus) \nColor: \(carAudi.color) \nLight Status \(carAudi.light)")

print("------------------------------")

print("First Car \nBrand: \(carMercedesTruck.brand) \nEngine status: \(carMercedesTruck.engineStatus)")
print("Window status: \(carMercedesTruck.windowStatus) \nNumber of wheels: \(carMercedesTruck.numberOfWheels)")
print("Transmition: \(carMercedesTruck.transmitionStatus) \nColor: \(carMercedesTruck.color)")
print("Light Status \(carMercedesTruck.light)")

print("------------------------------")





