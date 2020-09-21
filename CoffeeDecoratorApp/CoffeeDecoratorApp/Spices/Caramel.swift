//
//  Caramel.swift
//  CoffeeDecoratorApp
//
//  Created by Алексей Мальков on 19.09.2020.
//

import Foundation

class Caramel: CoffeeDecorator {
    var withCaramel: Bool = false

    convenience init(_ coffee: Coffee, withCaramel: Bool = false) {
        self.init(coffee)
        self.withCaramel = withCaramel
    }

    override func price() -> Int {
        switch self.withCaramel {
        case true:
            return super.price() + 100
        case false:
            return super.price()
        }
    }
}
