//
//  CustomStringConvertible.swift
//  iOSTrainning
//
//  Created by justin on 2022/10/18.
//

import UIKit

class CustomStringConvertibleVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 請實作CustomStringComvertible protocol的例子。

        let google = Company(name: "Google")

        print("\(google.description)")


    }

    struct Company: CustomStringConvertible {
        let name: String

        var description: String {
            return "Company is \(name)"
        }
    }

}
