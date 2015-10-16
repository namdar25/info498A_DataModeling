//
//  Money.swift
//  Domain Modeling
//
//  Created by Shawn Namdar on 10/15/15.
//  Copyright © 2015 Shawn Namdar. All rights reserved.
//

import Foundation

enum Currency {
    case USD
    case GBP
    case EUR
    case CAN
}
struct Money {
    
    var amount : Float
    var currency : Currency
    
    mutating func convert(newCurrency: Currency) {
        if newCurrency != currency {
            switch currency {
            case .USD:
                break
            case .GBP:
                self.amount = amount / 0.5
            case .EUR:
                self.amount = amount / 1.5
            case .CAN:
                self.amount = amount / 1.25
            }
            switch newCurrency {
            case .USD:
                break
            case .GBP:
                self.amount = amount * 0.5
            case .EUR:
                self.amount = amount * 1.5
            case .CAN:
                self.amount = amount * 1.25
            }
            currency = newCurrency
            
        }
    }
    
    mutating func addMoney(var addend: Money) {
        addend.convert(self.currency)
        self.amount += addend.amount
    }
    
    mutating func subtractMoney(var subtrahend: Money) {
        subtrahend.convert(self.currency)
        self.amount -= subtrahend.amount
    }
}





















