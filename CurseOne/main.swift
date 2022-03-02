//
//  main.swift
//  CurseOne
//
//  Created by Сергей Синёв on 19.02.2022.
//

import Foundation



enum OnleniCarShopError: Error {
    case errorEnvetoriName
    case errorCount
    case errorCointDeposite
}

struct Item {
    let price: Int
    var count: Int
    let brand: Brand

}

struct Brand {
    let name: String
}

final class OnlineCarShop {

    var assortiment = ["Model BMW": Item(price: 60000, count: 4, brand: Brand(name: "BMW")),
                       "Model AUDI": Item(price: 40000, count: 6, brand: Brand(name: "Audi")),
                       "Model Mercedes": Item(price: 90000, count: 2, brand: Brand(name: "Mercedes"))]

    var cointDeposite = 0

    func shop(itemNead name: String) throws -> Brand {

        guard let item = assortiment[name] else { throw OnleniCarShopError.errorEnvetoriName}
        guard item.count > 0 else { throw OnleniCarShopError.errorCount}
        guard item.price <= cointDeposite else { throw OnleniCarShopError.errorCointDeposite}


        cointDeposite -= item.price

        var newItem = item
        newItem.count -= 1
        assortiment[name] = newItem

        print("Product was vendered \(name)")

        return newItem.brand
    }
}

let shoping = OnlineCarShop()
shoping.cointDeposite = 200000

do {
    let brand = try shoping.shop(itemNead: "Model BMW")
    print(brand.name)
} catch let error {
    print(error)
}













