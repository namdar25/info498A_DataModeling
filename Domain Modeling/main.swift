//
//  main.swift
//  Domain Modeling
//
//  Created by Shawn Namdar on 10/15/15.
//  Copyright © 2015 Shawn Namdar. All rights reserved.
//

import Foundation

//Testing functions

//Money tests
func testConvertMoney(var money1: Money, newCurrency: Currency) {
    print("Origional amount \(money1.amount) \(money1.currency)")
    money1.convert(newCurrency)
    print("New amount \(money1.amount) \(money1.currency)")
}

func testAddMoney(var addend1: Money, addend2: Money) {
    print("The first addend is \(addend1.amount) \(addend1.currency), the second addend is \(addend2.amount) \(addend2.currency)")
    addend1.addMoney(addend2)
    print("The sum is \(addend1.amount) \(addend1.currency)")
}

func testSubtractMoney(var minuend: Money, subtrahend: Money) {
    print("The first addend is \(minuend.amount) \(minuend.currency), the second addend is \(subtrahend.amount) \(subtrahend.currency)")
    minuend.addMoney(subtrahend)
    print("The sum is \(minuend.amount) \(minuend.currency)")
}

var money1: Money = Money(amount: 10.50, currency: Currency.USD)
var money2: Money = Money(amount: 60.25, currency: Currency.GBP)
var money3: Money = Money(amount: 33.23, currency: Currency.EUR)
var money4: Money = Money(amount: 94.67, currency: Currency.CAN)
var money5: Money = Money(amount: 71.25, currency: Currency.USD)
var money6: Money = Money(amount: 63.15, currency: Currency.GBP)
var money7: Money = Money(amount: 15.74, currency: Currency.EUR)
var money8: Money = Money(amount: 17.50, currency: Currency.USD)

print("MONEY TESTS /////////////////////////////////////////////////////////")

testConvertMoney(money1, newCurrency: Currency.GBP)
testConvertMoney(money2, newCurrency: Currency.USD)
testConvertMoney(money3, newCurrency: Currency.CAN)
testConvertMoney(money4, newCurrency: Currency.EUR)
print("/////////////////////////////////////////////////////////////////////")
testAddMoney(money1, addend2: money2)
testAddMoney(money3, addend2: money4)
testAddMoney(money5, addend2: money6)
testAddMoney(money7, addend2: money8)
print("/////////////////////////////////////////////////////////////////////")
testSubtractMoney(money1, subtrahend: money2)
testSubtractMoney(money3, subtrahend: money4)
testSubtractMoney(money5, subtrahend: money6)
testSubtractMoney(money7, subtrahend: money8)

//Job tests
func testCalculateIncome(job: Job, hours: Float) {
    print("The yearly income is \(job.calculateIncome(hours))")
}

func testRaise (job: Job, percent: Float) {
    print("The origional salary is \(job.salary)")
    job.raise(percent)
    print("The new salary is \(job.salary)")
}

var job1: Job = Job(title: "Executive", salary: 250000, salaryType: SalaryType.YEARLY)
var job2: Job = Job(title: "Accountant", salary: 85000, salaryType: SalaryType.YEARLY)
var job3: Job = Job(title: "Electrician", salary: 95, salaryType: SalaryType.HOURLY)
var job4: Job = Job(title: "Plumber", salary: 45.50, salaryType: SalaryType.HOURLY)
var job5: Job = Job(title: "Painter", salary: 35000, salaryType: SalaryType.YEARLY)
var job6: Job = Job(title: "Technician", salary: 65000, salaryType: SalaryType.YEARLY)
var job7: Job = Job(title: "Mechanic", salary: 50.50, salaryType: SalaryType.HOURLY)
var job8: Job = Job(title: "Construction Worker", salary: 30.50, salaryType: SalaryType.HOURLY)

print("JOB TESTS /////////////////////////////////////////////////////////")

testCalculateIncome(job1, hours: 2000)
testCalculateIncome(job2, hours: 2000)
testCalculateIncome(job3, hours: 2000)
testCalculateIncome(job4, hours: 2000)
testCalculateIncome(job5, hours: 2000)
testCalculateIncome(job6, hours: 2000)
testCalculateIncome(job7, hours: 2000)
testCalculateIncome(job8, hours: 2000)
print("/////////////////////////////////////////////////////////////////////")
testRaise(job1, percent: 0.12)
testRaise(job2, percent: 0.18)
testRaise(job3, percent: 0.09)
testRaise(job4, percent: 0.07)
testRaise(job5, percent: 0.21)
testRaise(job6, percent: 0.05)
testRaise(job7, percent: 0.09)
testRaise(job8, percent: 0.17)

//Person tests
func testToString (person: Person) {
    print("The person's name is \(person.toString())")
}

var person1: Person = Person(firstName: "Sammy", lastName: "Rogers", age: 19, job: job7, spouse: nil)
var person2: Person = Person(firstName: "Steve", lastName: "Rogers", age: 20, job: job8, spouse: nil)
var person3: Person = Person(firstName: "Jack", lastName: "Jones", age: 12, job: nil, spouse: nil)
var person4: Person = Person(firstName: "jackie", lastName: "Jones", age: 39, job: job2, spouse: nil)
var person5: Person = Person(firstName: "Michael", lastName: "Jones", age: 42, job: job1, spouse: person4)
person4.setSpouse(person5)
var person6: Person = Person(firstName: "Aaron", lastName: "Roberts", age: 17, job: job5, spouse: nil)
var person7: Person = Person(firstName: "Georgia", lastName: "Aaron", age: 17, job: job3, spouse: person6)
person6.setSpouse(person7)
var person8: Person = Person(firstName: "Will", lastName: "Frank", age: 56, job: job4, spouse: nil)

print("PERSON TESTS /////////////////////////////////////////////////////////")

testToString(person1)
testToString(person2)
testToString(person3)
testToString(person4)
testToString(person5)
testToString(person6)
testToString(person7)
testToString(person8)

//Family tests
func testHouseHoldIncome (family: Family) {
    print("The household income is \(family.householdIncome())")
}

func testHaveChild (family: Family, firstName: String,lastName: String) {
    print("The family currently has \(family.members.count) members")
    let count: Int = family.members.count
    family.haveChild(firstName,lastName: lastName)
    if family.members.count > count {
       print("The family has just had a child, The family currently has \(family.members.count) members")
    } else {
        print("The family did not have a child and currently has \(family.members.count) members")
    }
}
var family1: Family = Family(members:person1, person2)
var family2: Family = Family(members:person3, person4, person5)

print("FAMILY TESTS /////////////////////////////////////////////////////////")

testHouseHoldIncome(family1)
testHouseHoldIncome(family2)
print("/////////////////////////////////////////////////////////////////////")
testHaveChild(family1, firstName: "Erin", lastName: "Rogers")
testHaveChild(family2, firstName: "Tyler", lastName: "Jones")



















