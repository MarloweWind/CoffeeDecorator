//
//  CoffeeType.swift
//  CoffeeDecoratorApp
//
//  Created by Алексей Мальков on 19.09.2020.
//

import Foundation

enum CoffeeType: Int {
    case americano = 0
    case expresso = 100
    case ristretto = 200
}

class Type: CoffeeDecorator {
    var coffeeType: CoffeeType = .americano

    convenience init(_ coffee: Coffee, CoffeeType: CoffeeType = .americano) {
        self.init(coffee)
        self.coffeeType = CoffeeType
    }

    override func price() -> Int {
        return super.price() + coffeeType.rawValue
    }

}
