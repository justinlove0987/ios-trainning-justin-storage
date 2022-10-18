//
//  RawRepresentablePractice.swift
//  iOSTrainning
//
//  Created by justin on 2022/10/18.
//

import UIKit

enum UserAgreement: RawRepresentable {
    case accepted
    case rejected
    case notSet

    typealias RawValue = Bool?

    init?(rawValue: Bool?) {
        switch rawValue {
        case true?: self = .accepted
        case false?: self = .rejected
        case nil: self = .notSet
        }
    }

    var rawValue: Bool? {
        switch self {
        case .accepted: return true
        case .rejected: return false
        case .notSet: return nil
        }
    }
}

class RawRepresentablePractice: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 請實作一個利用RawRepresentable protocol的例子。


    }

}
