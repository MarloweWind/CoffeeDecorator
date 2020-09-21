//
//  Sugar.swift
//  CoffeeDecoratorApp
//
//  Created by Алексей Мальков on 19.09.2020.
//

import Foundation

class Sugar: CoffeeDecorator {
    var withSugar: Bool = false

    convenience init(_ coffee: Coffee, withSugar: Bool = false) {
        self.init(coffee)
        self.withSugar = withSugar
    }

    override func price() -> Int {
        switch self.withSugar {
        case true:
            return super.price() + 20
        case false:
            return super.price()
        }
    }
}
