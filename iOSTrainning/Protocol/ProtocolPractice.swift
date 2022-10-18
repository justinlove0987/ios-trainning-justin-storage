//
//  ProtocolPractice.swift
//  iOSTrainning
//
//  Created by justin on 2022/10/18.
//

import UIKit

//protocol Parser {
//    func parse(input: String) -> String
//}

struct Course {}

struct InternatinalStudent: VerifiedStudent {
    var courses: [Course]

    mutating func enroll(_ course: Course) {

    }
}

protocol VerifiedStudent: Student {

}

protocol Student {
    var courses: [Course] { get set }
    mutating func enroll(_ course: Course)
}

class ProtocolPractice: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 請實作如果想定義一個新的InternatinalStudent struct，並服從於VerifiedStudent protocol，而服從VerifiedStudent protocol的型別也都需要服從Student protocol。

        // 請改寫Parser Protocol，使其parse function的parmeter type和return type沒有預設型別。

    }

}
