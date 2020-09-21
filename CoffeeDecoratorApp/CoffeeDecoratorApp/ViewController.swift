//
//  ViewController.swift
//  CoffeeDecoratorApp
//
//  Created by Алексей Мальков on 19.09.2020.
//

import UIKit

class ViewController: UIViewController{
    
    
    @IBOutlet weak var coffeeTypeControl: UISegmentedControl!
    @IBOutlet weak var coffeePriceLabel: UILabel!
    @IBOutlet weak var milkSwitch: UISwitch!
    @IBOutlet weak var caramelSwitch: UISwitch!    
    @IBOutlet weak var sugarSwitch: UISwitch!
    
    var base = Base()
    
    var coffeeType: CoffeeType{
        switch self.coffeeTypeControl.selectedSegmentIndex{
        case 1:
            return .expresso
        case 2:
            return .ristretto
        default:
            return .americano
        }
    }

    override func viewDidLoad(){
        super.viewDidLoad()
        coffeePriceLabel.text = String(getPrice(coffee: base))
    }

    func getPrice(coffee: Coffee) -> Int{
        let type = Type(base, CoffeeType: self.coffeeType)
        let sugar = Sugar(type, withSugar: self.sugarSwitch.isOn)
        let milk = Milk(sugar, withMilk: self.milkSwitch.isOn)
        let caramel = Caramel(milk, withCaramel: self.caramelSwitch.isOn)
        return caramel.price()
    }
    
    @IBAction func typeSwitched(_ sender: UISegmentedControl){
        coffeePriceLabel.text = String(getPrice(coffee: base))
    }
    
    @IBAction func milkSwitched(_ sender: UISwitch){
        coffeePriceLabel.text = String(getPrice(coffee: base))
    }
    
    
    @IBAction func caramelSwitched(_ sender: UISwitch){
        coffeePriceLabel.text = String(getPrice(coffee: base))
    }
    
    @IBAction func sugarSwitched(_ sender: UISwitch){
        coffeePriceLabel.text = String(getPrice(coffee: base))
    }
}

