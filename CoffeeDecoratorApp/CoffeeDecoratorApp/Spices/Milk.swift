//
//  Milk.swift
//  CoffeeDecoratorApp
//
//  Created by Алексей Мальков on 19.09.2020.
//

import Foundation

class Milk: CoffeeDecorator {
    var withMilk: Bool = false

    convenience init(_ coffee: Coffee, withMilk: Bool = false) {
        self.init(coffee)
        self.withMilk = withMilk
    }

    override func price() -> Int {
        switch self.withMilk {
        case true:
            return super.price() + 80
        case false:
            return super.price()
        }
    }
}
