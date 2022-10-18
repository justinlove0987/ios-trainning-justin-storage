//
//  ErrorPractice.swift
//  iOSTrainning
//
//  Created by justin on 2022/10/18.
//

import UIKit

class ErrorPractice: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 請實作一個throwing error的例子
        let loginResult = try? login(username: "")
        print(loginResult)
    }

    enum LoginErrors: Error {
        case badUsername
    }

    func login(username: String) throws -> Bool {
        if username.isEmpty { throw LoginErrors.badUsername }
        return true
    }

}
