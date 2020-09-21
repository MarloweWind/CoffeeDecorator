//
//  CoffeeDecorator.swift
//  CoffeeDecoratorApp
//
//  Created by Алексей Мальков on 19.09.2020.
//

import Foundation

class CoffeeDecorator: Coffee {

    var base: Coffee

    init(_ base: Coffee) {
        self.base = base
    }

    func price() -> Int {
        return base.price()
    }
}
