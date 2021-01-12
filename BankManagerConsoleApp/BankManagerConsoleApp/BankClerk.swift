
import Foundation

struct BankClerk {
    func handleClientBusiness(of client: Client) {
        print("\(client.waitingNumber)번 \(client.grade.description)고객 \(client.business.rawValue)업무 시작")
        
        switch client.business {
        case .deposit:
            Thread.sleep(forTimeInterval: 0.7)
        case .loan:
            Thread.sleep(forTimeInterval: 1.1)
        }
        
        print("\(client.waitingNumber)번 \(client.grade.description)고객 \(client.business.rawValue)업무 종료")
    }
}
