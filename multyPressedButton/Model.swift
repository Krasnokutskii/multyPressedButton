//
//  Model.swift
//  multyPressedButton
//
//  Created by Yaroslav Krasnokutskiy on 09.03.2022.
//

import Foundation

struct Order{
    let id: String
    let dueDate: String
    let status: Status
    static var TestOrders = [
        Order(id: "000000", dueDate: "2:00", status: .inProgress),
        Order(id: "000001", dueDate: "2:00", status: .waiting),
        Order(id: "000002", dueDate: "3:00", status: .ready),
        Order(id: "000003", dueDate: "5:00", status: .waiting),
        Order(id: "000004", dueDate: "2:00", status: .inProgress),
        Order(id: "000005", dueDate: "8:00", status: .waiting),
        Order(id: "000006", dueDate: "3:00", status: .fulfilled),
        Order(id: "000007", dueDate: "2:00", status: .inProgress),
        Order(id: "000008", dueDate: "5:00", status: .waiting),
        Order(id: "000009", dueDate: "3:00", status: .inProgress),
        Order(id: "000010", dueDate: "8:00", status: .ready),
        Order(id: "000011", dueDate: "8:00", status: .waiting),
        Order(id: "000012", dueDate: "8:00", status: .fulfilled),
        Order(id: "000013", dueDate: "2:00", status: .inProgress),
        Order(id: "000014", dueDate: "3:00", status: .fulfilled),
        Order(id: "000015", dueDate: "3:00", status: .inProgress),
    ]
}
enum Status: Int, Comparable{
    static func < (lhs: Status, rhs: Status) -> Bool {
        lhs.rawValue < rhs.rawValue
    }
    
    case waiting = 0
    case inProgress = 1
    case ready = 2
    case fulfilled = 3
    
    var string: String{
        get{
            switch self {
                
            case .waiting:
                return "waiting"
            case .inProgress:
                return "inProgress"
            case .ready:
                return "ready"
            case .fulfilled:
                return "fulfilled"
            }
        }
    }
}
