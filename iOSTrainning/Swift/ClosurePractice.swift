//
//  ClosurePractice.swift
//  iOSTrainning
//
//  Created by justin on 2022/10/18.
//

import UIKit

class ClosurePractice: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        // 請實作一個@autoclosure的例子
        debugLog("apple")
    }

    func debugLog(_ message: @autoclosure () -> String) {
        print("DEBUG: \(message())")
    }

}
