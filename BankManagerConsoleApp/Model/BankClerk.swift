//
//  BankClerk.swift
//  BankManagerConsoleApp
//
//  Created by kjs on 2021/08/02.
//

import Foundation

class BankClerk {
    private let id: Int
    var isWorking = false
    
    func ready() {
        isWorking = true
    }
    
    func doTask(about customer: Customer?) {
        guard let customer = customer else {
            return
        }
        
        print("\(customer.id)번 고객 \(customer.businessType.description)업무 시작")
        Thread.sleep(forTimeInterval: customer.businessType.requiredTime)
        print("\(customer.id)번 고객 \(customer.businessType.description)업무 종료")
        isWorking = false
    }
    
    init(id: Int) {
        self.id = id
    }
}
