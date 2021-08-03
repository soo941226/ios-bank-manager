//
//  BankClerk.swift
//  BankManagerConsoleApp
//
//  Created by kjs on 2021/08/02.
//

import Foundation

struct BankClerk {
    let id: Int
    var isWorking = false
    
    mutating func startTask(about customer: Customer?) {
        guard let customer = customer else {
            return
        }
        
        isWorking = true
        print("\(customer.id)번 고객 \(customer.requirement.description)업무 시작")
        Thread.sleep(forTimeInterval: customer.requirement.time)
        print("\(customer.id)번 고객 \(customer.requirement.description)업무 종료")
        isWorking = false
    }
}