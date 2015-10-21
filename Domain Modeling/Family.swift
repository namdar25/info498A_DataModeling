//
//  Family.swift
//  Domain Modeling
//
//  Created by Shawn Namdar on 10/15/15.
//  Copyright © 2015 Shawn Namdar. All rights reserved.
//

import Foundation

class Family : CustomStringConvertible{
    
    var members: [Person]
    var description : String {
        get {
            var string : String = "The members of this family are"
            for var index = 0; index < members.count; index++ {
                string += ", \(members[index].toString())"
            }
            return "\(string)"
        }
    }
    
    init(members: Person...) {
        self.members = members
    }

    func householdIncome() -> Float {
        var sum: Float = 0
        for var index = 0; index < members.count; index++ {
            if members[index].getJob() != nil {
            sum += members[index].getJob()!.calculateIncome(2000)
            }
        }
        return sum
    }
    
    func haveChild(firstName: String,lastName: String) {
        var ageBool: Bool = false
        for var index = 0; index < members.count; index++ {
            if members[index].age >= 21 {
                ageBool = true
            }
        }
        if ageBool {
            let child = Person(firstName: firstName, lastName: lastName, age: 0, job: nil, spouse: nil)
            members.append(child)
        }
    }
    
}