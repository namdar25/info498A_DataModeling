//
//  DoubleExtension.swift
//  Domain Modeling
//
//  Created by Shawn Namdar on 10/20/15.
//  Copyright © 2015 Shawn Namdar. All rights reserved.
//

import Foundation

extension Double {
    var USD : Money {
        return Money(amount: self, currency: Currency.USD)
    }
    var EUR : Money {
        return Money(amount: self, currency: Currency.EUR)
    }
    var GBP : Money {
        return Money(amount: self, currency: Currency.GBP)
    }
    var CAN : Money {
        return Money(amount: self, currency: Currency.CAN)
    }
    
}