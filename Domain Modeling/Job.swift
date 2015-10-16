//
//  Job.swift
//  Domain Modeling
//
//  Created by Shawn Namdar on 10/15/15.
//  Copyright © 2015 Shawn Namdar. All rights reserved.
//

import Foundation

enum SalaryType {
    case HOURLY
    case YEARLY
}

class Job {
    var title: String
    var salary: Float
    var salaryType: SalaryType
    
    init(title: String, salary: Float, salaryType: SalaryType) {
        self.title = title
        self.salary = salary
        self.salaryType = salaryType
    }
    
    func calculateIncome(hours: Float) -> Float {
        switch salaryType {
        case .HOURLY:
            return salary * hours
        case .YEARLY:
            return salary
        }
    }
    
    func raise(percent: Float) {
    salary = (salary*(1.0+percent))
    }
    
}