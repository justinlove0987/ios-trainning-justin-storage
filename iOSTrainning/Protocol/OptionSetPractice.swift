//
//  OptionSetPractice.swift
//  iOSTrainning
//
//  Created by justin on 2022/10/18.
//

import UIKit

struct Transportation: OptionSet {
    static let car = Transportation(rawValue: 1<<0)
    static let airplane = Transportation(rawValue: 1<<1)
    static let bike = Transportation(rawValue: 1<<2)

    let rawValue: Int
}

class OptionSetPractice: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let transportation: Transportation = [.airplane, .bike]

        print(transportation.rawValue)

    }
}
