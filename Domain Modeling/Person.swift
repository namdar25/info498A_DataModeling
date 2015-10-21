//
//  Person.swift
//  Domain Modeling
//
//  Created by Shawn Namdar on 10/15/15.
//  Copyright © 2015 Shawn Namdar. All rights reserved.
//

import Foundation

class Person :CustomStringConvertible {
    
    var firstName: String
    var lastName: String
    var age: Int
    private var job: Job?
    private var spouse: Person?
    var description : String {
        get {
            return "\(toString())"
        }
    }
    
    init(firstName: String,lastName: String, age: Int, job: Job?, spouse: Person?) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.setJob(job)
        self.setSpouse(spouse)
    }
    
    func setJob(job: Job?) {
        if age >= 16 {
            self.job = job
        }
    }
    
    func getJob() -> Job? {
        return job
    }
    
    func setSpouse(spouse: Person?) {
        if age >= 18 {
            self.spouse = spouse
        }
    }
    
    func getSpouse() -> Person? {
        return spouse
    }
    
    func toString() -> String {
        var returnString: String = "\(firstName), \(lastName), \(age) years old"
        if job != nil {
            returnString += ", job is a|an \(job!.title)"
        }
        if spouse != nil {
            returnString += ", is married to \(spouse!.firstName)"
        }
        return returnString
    }
}